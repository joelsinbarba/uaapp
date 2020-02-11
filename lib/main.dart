/*
flutter packages pub run build_runner watch
*/
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uaapp/bloc/auth/auth_bloc.dart';
import 'package:uaapp/bloc/auth/auth_event.dart';
import 'package:uaapp/bloc/auth/auth_state.dart';
import 'package:uaapp/bloc/evento/eventoBloc.dart';
import 'package:uaapp/bloc/evento/evento_state.dart';
import 'package:uaapp/bloc/login/login_bloc.dart';
import 'package:uaapp/bloc/semestre/semestreExport.dart';
import 'package:uaapp/home.dart';
import 'package:uaapp/curso.dart';
import 'package:uaapp/model/models.dart';
import 'backdropPhoto.dart';
import 'scrollEffects.dart';
import 'injectionContainer.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'ui/library.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'loginPage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() async {
  initKiwi();
  WidgetsFlutterBinding.ensureInitialized();
  print('INICIANDO');
  final _storage = new FlutterSecureStorage();
  globalUserId = await _storage.read(key: 'userId');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthBloc _authenticationBloc;

  @override
  void initState() {
    _authenticationBloc = AuthBloc();
    _authenticationBloc.onSearchInitiated();
    super.initState();
  }

  @override
  void dispose() {
    _authenticationBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    try {
      FlutterStatusbarcolor.setStatusBarColor(colores['black']);
      FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    } catch (e) {}

    //Login
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _userInputController = TextEditingController();
    final TextEditingController _passwordInputController =
        TextEditingController();

    return BlocProvider<AuthBloc>(
      bloc: _authenticationBloc,
      child: MaterialApp(
        theme: ThemeData(
          platform: TargetPlatform.iOS,
          primarySwatch: Colors.red,
        ),
        home: BlocBuilder<AuthEvent, AuthState>(
          bloc: _authenticationBloc,
          builder: (BuildContext context, AuthState state) {
            if (state.loggedIn == true) {
              print('SHould update');
              return Stack(
                children: <Widget>[
                  MyHomePage(),
                ],
              );
            }
            if (state.loggedIn == false) {
              return LoginPage(
                formKey: _formKey,
                userInputController: _userInputController,
                passwordInputController: _passwordInputController,
              );
            }
            return Container();
          },
        ),
      ),
    );
    //End login
    /*  return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: Colors.blue,
      ),
      home: loggedIn
          ? MyHomePage(title: 'Flutter Demo Home Page')
          : LoginPage(
              formKey: _formKey,
              userInputController: _userInputController,
              passwordInputController: _passwordInputController,
            ),
    ); */
  }
}
