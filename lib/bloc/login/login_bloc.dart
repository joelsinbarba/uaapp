import 'package:bloc/bloc.dart';
import 'package:uaapp/bloc/login/login_event.dart';
import 'package:uaapp/bloc/login/login_state.dart';
import 'package:uaapp/network/repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:uaapp/ui/library.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final SearchRepository _searchRepository;
  final _storage = new FlutterSecureStorage();

  LoginBloc(this._searchRepository) : super();

  @override
  LoginState get initialState => LoginState.initial();

  void onSearchInitiated(String user, String password) {
    dispatch(LoginInitiated((b) => b
      ..user = user
      ..password = password));
  }

  void onShowUp() {
    dispatch(LoginShowUp());
  }

  @override
  Stream<LoginState> mapEventToState(
      LoginState currentState, LoginEvent event) async* {
    if (event is LoginInitiated) {
      yield* mapSearchInitiated(event);
    } else if (event is LoginShowUp) {
      yield LoginState.initial();
    }
  }

  Stream<LoginState> mapSearchInitiated(LoginInitiated event) async* {
    yield LoginState.loading();

    try {
      final searchResult =
          await _searchRepository.login(event.user, event.password);

      print(searchResult);

      if (searchResult.accessId == null) {
        print('NO USER, TRY AGAIN');
        // _showDialog();
        yield LoginState.fail();
      } else {
        print('USER IS: ' + searchResult.accessId.toString());
        globalUserId = searchResult.accessId.toString();
        await _storage.write(
            key: 'userId', value: searchResult.accessId.toString());
        yield LoginState.success(searchResult);
      }
    } on NoSearchResultExeption catch (e) {
      yield LoginState.loading();
    }
  }
}
