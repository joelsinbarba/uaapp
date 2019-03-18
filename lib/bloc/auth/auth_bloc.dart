import 'package:bloc/bloc.dart';
import 'package:uaapp/bloc/auth/auth_event.dart';
import 'package:uaapp/bloc/auth/auth_state.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:uaapp/ui/library.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final loggedIn = false;
  final _storage = new FlutterSecureStorage();

  AuthBloc() : super();

  @override
  AuthState get initialState => globalUserId != null 
      ? AuthState.authenticated()
      : AuthState.unauthenticated();

  void onSearchInitiated() {
    dispatch(AuthInitiated());
  }

  void cerrarSesion() async {
    await _storage.delete(key: 'userId');
    dispatch(AuthInitiated());
  }

  @override
  Stream<AuthState> mapEventToState(
      AuthState currentState, AuthEvent event) async* {
    if (event is AuthInitiated) {
      globalUserId = await _storage.read(key: 'userId');
      if (globalUserId != null && globalUserId != '') {
        yield AuthState.authenticated();
      } else {
        yield AuthState.unauthenticated();
      }
    }
  }
}
