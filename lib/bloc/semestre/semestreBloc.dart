import 'package:bloc/bloc.dart';
import 'package:uaapp/bloc/semestre/semestreEvent.dart';
import 'package:uaapp/bloc/semestre/semestreState.dart';
import 'package:uaapp/network/repository.dart';

class SemestreBloc extends Bloc<SemestreEvent, SemestreState> {
  final SearchRepository _searchRepository;
  int year;

  SemestreBloc(this._searchRepository) : super();

  @override
  SemestreState get initialState => SemestreState.initial();

  void onSearchInitiated() {
    dispatch(SemestreInitiated());
    year = 2019;
  }

  void onLoadMore() {
    dispatch(SemestreLoadMore());
  }

  @override
  Stream<SemestreState> mapEventToState(
      SemestreState currentState, SemestreEvent event) async* {
    if (event is SemestreInitiated) {
      yield* mapSearchInitiated(event);
    } else if (event is SemestreLoadMore) {
      try {
        // yield SemestreState.loading();
        if (year <= 2015) {
          yield currentState.rebuild((b) => b..noMoreResults = true);
          return;
        }
        if (year >= 2016) {
                  yield currentState.rebuild((b) => b..hasReachedEndOfResults = true);
          year--;
        }

        final searchResult = await _searchRepository.searchItems(year, 70262);

        //print(searchResult);
        yield SemestreState.success(currentState.response + searchResult);
      } on NoSearchResultExeption catch (e) {
        yield SemestreState.loading();
      }
    }
  }

  Stream<SemestreState> mapSearchInitiated(SemestreInitiated event) async* {
    yield SemestreState.loading();

    try {
      var searchResult = await _searchRepository.searchItems(year, 70262);
      //print(searchResult);
      yield SemestreState.success(searchResult);
    } on NoSearchResultExeption catch (e) {
      yield SemestreState.loading();
    }
  }
}
