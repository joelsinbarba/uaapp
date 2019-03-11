import 'package:built_collection/built_collection.dart';
import 'package:uaapp/model/models.dart';
import 'package:uaapp/network/dataSource.dart';

class SearchRepository {
  DataSource _dataSource;

  SearchRepository(this._dataSource);

  Future<List<Semestre>> searchItems(int anio, int id) async {
    print('Loading year ' + anio.toString() + '...');
    var searchResult = await _dataSource.getSemestres(
        anio: anio.toString(), id: id.toString());
    //print('helloo' + searchResult.toString());
    // if (searchResult) throw NoSearchResultExeption();
    return searchResult;
  }

  Future<List<Evento>> getEventos() async {
    final searchResult = await _dataSource.getEventos(alumnoid: "70262");
    //print('helloo' + searchResult.toString());
    // if (searchResult) throw NoSearchResultExeption();
    return searchResult;
  }
}

class NoSearchResultExeption implements Exception {
  final message = 'No results';
}
