import 'package:flutter/material.dart';

final colores = {
  'red': Color(0XFFDF303C),
  'yellow': Color(0XFFFA982E),
  'black': Color(0XFF2E2E2E),
  'white': Color(0xFFF3F1F1),
};

class UaaButton extends StatelessWidget {
  final String texto;
  final Function onpressed;
  final Color backgroundColor, textColor, accentColor, splashColor;
  final double elevation;
  final IconData icono;

  UaaButton(this.texto, this.onpressed,
      {this.backgroundColor,
      this.textColor,
      this.accentColor,
      this.icono,
      this.splashColor,
      this.elevation});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RawMaterialButton(
            elevation: this.elevation != null ? this.elevation : 6,
            onPressed: onpressed,
            fillColor:
                backgroundColor != null ? backgroundColor : colores['red'],
            splashColor: splashColor != null ? splashColor : Colors.black,
            child: IntrinsicWidth(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Text(
                            texto,
                            style: TextStyle(
                                fontSize: 20,
                                color: textColor != null
                                    ? textColor
                                    : Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700),
                          ),
                          icono != null
                              ? Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Icon(
                                    icono,
                                    color: textColor != null
                                        ? textColor
                                        : Colors.white,
                                    size: 12,
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color:
                        accentColor != null ? accentColor : colores['yellow'],
                    height: 6,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UaaInputField extends StatelessWidget {
  final IconData icono;
  final String hint;
  UaaInputField(this.icono, this.hint);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Material(
        elevation: 6,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            /* border:  Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ), */
          ),
          child: TextFormField(
            obscureText: true,
            //textAlign: TextAlign.center,
            decoration: InputDecoration(
              prefixIcon: Icon(
                icono,
                color: Colors.black,
              ),
              hintText: hint,
              hintStyle: TextStyle(color: Colors.black54),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class UaaInputFieldB extends StatelessWidget {
  final String hint;
  final String topText;
  final String textValue;
  UaaInputFieldB(this.topText, this.hint, {this.textValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: Text(
              topText,
              style: TextStyle(
                  fontSize: 16,
                  color: colores['black'],
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600),
            ),
          ),
          Material(
            elevation: 6,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              child: TextFormField(
                //textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16),
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(color: Colors.black54),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            color: colores['red'],
            height: 4,
          ),
        ],
      ),
    );
  }
}

class EventoCard extends StatelessWidget {
  EventoCard(this.nombre, this.hora, this.aula);

  final String nombre;
  final String hora;
  final String aula;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Material(
        color: Color(0xFFFCFCFC),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        elevation: 2,
        child: Container(
          height: 40,
          width: 280,
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  width: double.infinity,
                  height: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Color(0xFFDF303C),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Color(0xFFFA982E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                /* color: Colors.teal, */
                margin: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.nombre,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    SizedBox(height: 3),
                    Text(
                      this.hora,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      this.aula,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
