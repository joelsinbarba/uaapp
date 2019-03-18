import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uaapp/bloc/auth/auth_bloc.dart';
import 'package:uaapp/bloc/login/login_bloc.dart';
import 'package:uaapp/bloc/login/login_state.dart';
import 'package:uaapp/bloc/semestre/semestreBloc.dart';
import 'package:uaapp/ui/ecampus_icons.dart';
import 'package:uaapp/ui/library.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage(
      {Key key,
      @required this.formKey,
      this.userInputController,
      this.passwordInputController})
      : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController userInputController;
  final TextEditingController passwordInputController;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginBloc = kiwi.Container().resolve<LoginBloc>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _loginBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _loginBloc,
      child: Scaffold(
        backgroundColor: Color(0xFF2E2E2E),

        body: GestureDetector(
          onTap: () {
            // call this method here to hide soft keyboard
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height /* - 78 */,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  //Icon(icon)
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 70, bottom: 30),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Ecampus.logo,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * .12,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        //color: Colors.red,
                        //height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /* SizedBox(
                              height: 50,
                            ), */
                            Text(
                              'UNIVERSIDAD\nAUTÓNOMA \nDE ASUNCIÓN',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Montserrat',
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w800
                                  //fontWeight: FontWeight.bold
                                  ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  BlocBuilder(
                      bloc: _loginBloc,
                      builder: (context, LoginState state) {
                        if (state.error) {
                          //_showDialog(context);
                          WidgetsBinding.instance.addPostFrameCallback(
                              (_) => _showDialog("Error de inicio de sesión"));
                        }

                        if (state.isSuccesfull &&
                            _loginBloc.currentState.response != null) {
                          WidgetsBinding.instance
                              .addPostFrameCallback((_) async {
                            await Future.delayed(Duration(milliseconds: 500));
                            BlocProvider.of<AuthBloc>(context)
                                .onSearchInitiated();
                          }); /* _showDialog("Hola, " + _loginBloc.currentState.response.firstname) */
                          return Container(
                            padding: EdgeInsets.all(80),
                            child: Center(
                              child: CupertinoActivityIndicator(),
                            ),
                          );
                        }

                        if (state.isLoading || state.error) {
                          return Container(
                            padding: EdgeInsets.all(80),
                            child: Center(
                              child: CupertinoActivityIndicator(),
                            ),
                          );
                        }
                        /*  if (state.isSuccesfull) {
                          print('success');
                        return Container(
                          color: Colors.red,
                        );
                      } */
                        {
                          return Form(
                            key: widget.formKey,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: <Widget>[
                                  UaaInputField(widget.userInputController,
                                      Icons.person_outline, 'Usuario'),
                                  UaaInputField(
                                    widget.passwordInputController,
                                    Icons.fingerprint,
                                    'Contraseña',
                                    obscureText: true,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  UaaButton('INGRESAR', () {
                                    // _showDialog();
                                    print(
                                        widget.userInputController.text.trim() +
                                            widget.passwordInputController.text
                                                .trim());
                                    _loginBloc.onSearchInitiated(
                                        widget.userInputController.text.trim(),
                                        widget.passwordInputController.text
                                            .trim());
                                    BlocProvider.of<AuthBloc>(context)
                                        .onSearchInitiated();
                                  }),
                                ],
                              ),
                            ),
                          );
                        }
                      }),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(bottom: 30),
                            child: Text(
                              "Utiliza tus credenciales del E-Campus",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                  /* Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.display1,
                  ), */
                ],
              ),
            ),
          ),
        ),
        /* floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),  */ // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  void _showDialog(String texto) async {
    // flutter defined function
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          content: Container(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(texto,
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new UaaButton(
                      '  Ok  ',
                      () {
                        Navigator.of(context).pop();
                      },
                      accentColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: colores['yellow'],
                    ),
                    /* new UaaButton(
                      '  Salir  ',
                      () {
                        Navigator.of(context).pop();
                      },
                      accentColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: colores['yellow'],
                    ), */
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ).then((onValue) async {
      await Future.delayed(Duration(milliseconds: 300));
      _loginBloc.onShowUp();
    });
  }
}
