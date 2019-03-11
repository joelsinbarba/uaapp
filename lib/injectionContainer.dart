import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:http/http.dart' as http;
import 'package:uaapp/bloc/semestre/semestreBloc.dart';
import 'package:uaapp/bloc/evento/eventoBloc.dart';
import 'package:uaapp/network/dataSource.dart';
import 'package:uaapp/network/repository.dart';

void initKiwi() {
  kiwi.Container()
    ..registerInstance(http.Client())
    ..registerFactory((c) => DataSource(c.resolve()))
    ..registerFactory((c) => SearchRepository(c.resolve()))
    ..registerFactory((c) => SemestreBloc(c.resolve()))
    ..registerFactory((c) => EventoBloc(c.resolve()));
}
