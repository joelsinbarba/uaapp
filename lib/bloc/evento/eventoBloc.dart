import 'package:bloc/bloc.dart';
import 'package:uaapp/bloc/evento/evento_event.dart';
import 'package:uaapp/bloc/evento/evento_state.dart';
import 'package:uaapp/network/repository.dart';

class EventoBloc extends Bloc<EventoEvent, EventoState> {
  final SearchRepository _searchRepository;

  EventoBloc(this._searchRepository) : super();

  @override
  EventoState get initialState => EventoState.initial();

  void onSearchInitiated() {
    dispatch(EventoInitiated());
  }

  @override
  Stream<EventoState> mapEventToState(
      EventoState currentState, EventoEvent event) async* {
    if (event is EventoInitiated) {
      yield* mapSearchInitiated(event);
    }
  }

  Stream<EventoState> mapSearchInitiated(EventoInitiated event) async* {
    yield EventoState.loading();

    try {
      final searchResult = await _searchRepository.getEventos();
      //print(searchResult);
      yield EventoState.success(searchResult);
    } on NoSearchResultExeption catch (e) {
      yield EventoState.loading();
    }
  }
}
