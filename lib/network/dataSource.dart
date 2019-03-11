import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:uaapp/model/models.dart';
import 'package:uaapp/model/serializer/serializers.dart';

class DataSource {
  final http.Client client;
  /*  final String _url =
      'http://service.uaa.edu.py/curso/GetSemestresPorAlumnoAnioV2?anio=2018&id=70262&mostrar_horario=N&tipo_persona=A'; */

  DataSource(this.client);

  Future<List<Semestre>> getSemestres({String anio, String id = ''}) async {
    var _url =
        'http://service.uaa.edu.py/curso/GetSemestresPorAlumnoAnioV2?anio=$anio&id=$id&mostrar_horario=N&tipo_persona=A';
    final urlEncoded = Uri.encodeFull(_url);
    final response =
        await client.post(urlEncoded, headers: {'Accept': 'application/json'});
    if (response.statusCode == 200) {
      List<dynamic> res = json.decode(response.body);
      if (res.length < 1) {
        print('Houston problem');
        res..add({
          "emptyYear": int.parse(anio)
        });
      }
      List<Semestre> tasks = res
          .map<Semestre>((dynamic map) =>
              serializers.deserializeWith<Semestre>(Semestre.serializer, map))
          .toList();
      tasks = tasks.reversed.toList();
      /*   if (tasks.length < 1) {
        print('Houston problem');
        tasks = List<Semestre>();
        tasks.add(Semestre()..emptyYear = anio);
        return tasks;
      } */
      //tasks.sort((a, b) => a.semestreID.compareTo(b.semestreID));
      return tasks;
    } else {
      print('Ocurrió un error');
      throw SemestreError('Error!');
    }
  }

  Future<List<Evento>> getEventos({String alumnoid = ''}) async {
    var _url =
        'http://service.uaa.edu.py/noticiaEvento/GetEventosDia/?personaid=$alumnoid&tipo_persona=A';
    final urlEncoded = Uri.encodeFull(_url);
    final response =
        await client.post(urlEncoded, headers: {'Accept': 'application/json'});
    if (response.statusCode == 200) {
      List<dynamic> res = json.decode(response.body);
      List<Evento> tasks = res
          .map<Evento>((dynamic map) =>
              serializers.deserializeWith<Evento>(Evento.serializer, map))
          .toList();
      return tasks;
    } else {
      print('Ocurrió un error');
      throw SemestreError('Error!');
    }
  }
}
