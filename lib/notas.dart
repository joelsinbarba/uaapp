import 'package:flutter/material.dart';
import 'package:uaapp/model/models.dart';

class ExamenesPage extends StatelessWidget {
  final Curso curso;

  ExamenesPage({Key key, this.curso}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(curso);
    return Scaffold(
      backgroundColor: Color(0xFFEFEFF4),
      body: Container(
        height: double.infinity,
        color: Color(0xFFEFEFF4),
        child: GestureDetector(
          onTap: () {
            // call this method here to hide soft keyboard
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                BotonAtras(),
                Titulo(curso.nombreAbreviadoMateria),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: curso.examenes.length,
                  itemBuilder: (context, index) {
                    return Calificacion(curso.examenes[index]);
                  },
                ),
                // Calificacion("PRIMER PARCIAL", DateTime.now(), "73"),
                /*  Calificacion("SEGUNDO PARCIAL", DateTime.now(), "52"),
                  Calificacion("TERCER PARCIAL", DateTime.now(), "84"), */
               // PuntosNecesarios("52"),
                // Calificacion("FINAL", DateTime.now(), "90"),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Calificacion extends StatelessWidget {
  Calificacion(this.examen);

  final Examen examen;

  @override
  Widget build(BuildContext context) {
    String titulo = '';
    String fecha = '';
    String nota = examen.fechaExamen;

    try {
      List<String> lista = examen.fechaExamen.split("-");
      fecha = lista[0].trim();
      nota = lista[1].trim();
    } catch (e) {}

    switch (examen.parcial) {
      case '1':
        titulo = 'Primer Parcial';
        break;
      case '2':
        titulo = 'Segundo Parcial';
        break;
      case '3':
        titulo = 'Tercer Parcial';
        break;
      case 'F':
        titulo = 'Examen Final';
        break;
      case 'Nota Final':
        fecha = '';
        titulo = 'Nota Final';
        if(examen.fechaExamen == ''){
          nota = '...';
        }
        break;
      default:
    }

    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            titulo,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w800,
                fontSize: 13),
          ),
          SizedBox(
            height: 4,
          ),
          fecha != '' ?Text(
            fecha.toString(),
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 10),
          ) :Container(),
          SizedBox(
            height: 8,
          ),
          Text(
            nota,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 34,
                letterSpacing: 4,
                fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }
}

class PuntosNecesarios extends StatelessWidget {
  PuntosNecesarios(this.puntos);

  final String puntos;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500),
              children: <TextSpan>[
                TextSpan(
                  text: 'Necesitas ',
                ),
                TextSpan(
                    text: puntos,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: ' puntos en el Examen Final para aprobar la materia.',
                ),
              ],
            ),
          )),
    );
  }
}

class BotonAtras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class Titulo extends StatelessWidget {
  final String title;
  Titulo(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "EXAMENES",
            style: new TextStyle(
                color: Color(0XFFFA982E),
                fontFamily: 'Montserrat',
                letterSpacing: 3,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w800,
                letterSpacing: 1,
                fontSize: 24),
          ),
        ],
      ),
    );
  }
}
