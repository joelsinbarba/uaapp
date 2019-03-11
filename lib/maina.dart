import 'package:flutter/material.dart';
import 'package:uaapp/model/models.dart';
import 'package:uaapp/notas.dart';
import 'package:uaapp/ui/library.dart';

class CursoPage extends StatelessWidget {
  final Curso curso;

  CursoPage({Key key, this.curso}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool finalizado = false, aprobado = true;

    String notaFinal =
        curso.examenes.firstWhere((o) => o.parcial == 'Nota Final').fechaExamen;

    try {
      if (notaFinal == 'Asistió') {
        finalizado = true;
      } else if (notaFinal != '' && int.parse(notaFinal) > 60) {
        print(curso.nombreAbreviadoMateria + 'is finalizado');
        finalizado = true;
      } else if (notaFinal != '' && int.parse(notaFinal) < 60) {
        aprobado = false;
      }
    } catch (e) {
      // print('ERROR' + e.);
    }

    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Color(0xFFEFEFF4),
        child: GestureDetector(
          onTap: () {
            // call this method here to hide soft keyboard
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: IconButton(
                    icon: Icon(
                      const IconData(0xe804, fontFamily: "Ecampus"),
                      color: Colors.black,
                      size: 18,
                    ),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    curso.nombreAbreviadoMateria,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                        fontSize: 24),
                    textAlign: TextAlign.left,
                  ),
                ),
                aprobado ? Container() : NoAprobadoBanner(),
                finalizado ? FinalizadoBanner() : Container(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "CÓDIGO",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w800,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            curso.nroCurso.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 34,
                                letterSpacing: 4,
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                      Container(
                        color: Color(0XFFFA982E),
                        height: 100,
                        width: 4,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "AULA",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w800,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            curso.nroAula.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 34,
                                letterSpacing: 4,
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Desde ' + curso.fechaInicio,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: new TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Hasta ' + curso.fechaFin,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                UaaButton(
                  'EXAMENES',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExamenesPage(curso: curso),
                      ),
                    );
                  },
                  elevation: 0,
                  accentColor: Colors.transparent,
                  backgroundColor: Color(0XFFFA982E),
                  icono: IconData(0xe805, fontFamily: "Ecampus"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, bottom: 10, top: 20),
                  child: Text(
                    /*  widget.titleData['title'].toString() */ "Profesor",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                PersonaListItem(curso.nombreProfesor),
                /*  Container(
                  margin: EdgeInsets.only(left: 20, bottom: 10, top: 20),
                  child: Text(
                     "Estudiantes",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                PersonaListItem("GOMEZ AMARILLA, JUAN CARLOS"),
                PersonaListItem("GONZALES PEREIRA, MARTIN"),
                PersonaListItem("FERNANDEZ ALUM, ELIAS"), */
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FinalizadoBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20),
        color: Color(0xFFB8F28B),
        child: Text(
          "😎 CURSO FINALIZADO 😎",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFF58A700),
              fontFamily: 'Montserrat',
              letterSpacing: 3,
              fontSize: 15,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}

class NoAprobadoBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20),
        color: Color(0X44DF2E3D),
        child: Text(
          "CURSO NO APROBADO",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: colores['red'],
              fontFamily: 'Montserrat',
              letterSpacing: 3,
              fontSize: 15,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}

class PersonaListItem extends StatelessWidget {
  const PersonaListItem(this.nombre);

  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Container(
      /*    color: Colors.teal, */
      padding: EdgeInsets.symmetric(
        vertical: 5,
      ),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Material(
              color: Color(0xFFFA982E),
              borderRadius: BorderRadius.all(Radius.circular(6)),
              elevation: 1,
              child: Container(
                width: 50,
                height: 50,
                child: FractionallySizedBox(
                  heightFactor: 0.9,
                  widthFactor: 0.9,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image(
                        image: AssetImage('assets/images/boy.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              child: Text(
                nombre,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: new TextStyle(
                    fontFamily: 'Quicksand', fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
