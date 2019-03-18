import 'package:built_collection/built_collection.dart';
import 'package:uaapp/model/models.dart';
import 'package:uaapp/network/dataSource.dart';
import 'package:uaapp/ui/library.dart';

class SearchRepository {
  DataSource _dataSource;

  SearchRepository(this._dataSource);

  Future<List<Semestre>> searchItems(int anio, String id) async {
    print('Loading year ' + anio.toString() + '... for user $id' );
    var searchResult = await _dataSource.getSemestres(
        anio: anio.toString(), id: id.toString());
    return searchResult;
  }

  Future<List<Evento>> getEventos() async {
    final searchResult = await _dataSource.getEventos(alumnoid: globalUserId);
    return searchResult;
  }

  Future<LoginResponse> login(String user, String password) async {
    LoginResponse searchResult = await _dataSource.login(user,password);
    return searchResult;
  }
}

class NoSearchResultExeption implements Exception {
  final message = 'No results';
}
