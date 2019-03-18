import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uaapp/bloc/auth/auth_bloc.dart';
import 'package:uaapp/bloc/evento/eventoBloc.dart';
import 'package:uaapp/bloc/evento/evento_state.dart';
import 'package:uaapp/bloc/semestre/semestreExport.dart';
import 'package:uaapp/curso.dart';
import 'package:uaapp/model/models.dart';
import 'package:uaapp/ui/ecampus_icons.dart';
import 'backdropPhoto.dart';
import 'scrollEffects.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'ui/library.dart';

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Icon(
            Ecampus.logo,
            color: Colors.white,
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Eventos",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                ),
                textAlign: TextAlign.left,
              ),
              Eventer(BlocProvider.of<EventoBloc>(context)),
            ],
          ),
        ),
      ],
    );
  }
}

class Eventer extends StatelessWidget {
  final EventoBloc _eventoBloc; //kiwi.Container().resolve<EventoBloc>();

  Eventer(this._eventoBloc);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _eventoBloc,
        builder: (context, EventoState state) {
          if (state.isLoading)
            return Container(
              height: 130,
              child: Center(
                child: CupertinoActivityIndicator(),
              ),
            );

          return state.isSuccesfull && state.response != null
              ? Container(
                  height: 130.0,
                  width: double.infinity,
                  child: state.response.length > 0
                      ? ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          itemCount: state.response.length,
                          itemBuilder: (context, index) {
                            return EventoCard(
                                state.response[0].nombreEvento,
                                "HOY - " + state.response[0].horaInicio + " hs",
                                "AULA " +
                                    (state.response[0].nroAula != null
                                        ? state.response[0].nroAula.toString()
                                        : 'AUN NO ASIGNADA'));
                          },
                        )
                      : Center(
                          child: Text(
                            'No tienes eventos para hoy',
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
              : Container(
                  height: 130,
                );
        });
  }
}

int calculateListItemCount(SemestreState state) {
  // if(state.)
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollController;
  EventDetailsScrollEffects _scrollEffects;
  TabController _tabController;

  final _semestreBloc = kiwi.Container().resolve<SemestreBloc>();
  final _eventoBloc = kiwi.Container().resolve<EventoBloc>();

  Widget _buildEventBackdrop() {
    return Positioned(
      top: _scrollEffects.headerOffset,
      child: EventBackdropPhoto(
        scrollEffects: _scrollEffects,
        image: 'assets/images/arbol.png',
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _scrollEffects = EventDetailsScrollEffects();
    print('the user is: ' + globalUserId);
    _semestreBloc.onSearchInitiated();
    _eventoBloc.onSearchInitiated();
    _tabController = TabController(vsync: this, length: 3);
  }

  void _scrollListener() {
    setState(() {
      _scrollEffects.updateScrollOffset(context, _scrollController.offset);
    });
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      _semestreBloc.onLoadMore();
    }
    /*  if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      print('top');
    } */
  }

  @override
  void dispose() {
    _semestreBloc.dispose();
    _eventoBloc.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: _semestreBloc,
        child: BlocProvider(
          bloc: _eventoBloc,
          child: _buildScaffold(),
        ));
  }

  List<Widget> divide(SemestreState state) {
    List<Widget> content = List<Widget>();
    for (var i = 0; i < state.response.length; i++) {
      content.add(new TheBody(state, i));
    }
    return content;
  }

  Scaffold _buildScaffold() {
    //content.add();
    /*  var theHeight = MediaQuery.of(context).size.height -
        ((_scrollEffects.backdropHeight - _scrollController.offset - 10).abs() >
                MediaQuery.of(context).size.height - 10
            ? 0
            : (_scrollEffects.backdropHeight - _scrollController.offset - 10)
                .abs()); */
    return Scaffold(
      backgroundColor: colores['white'],
      body: BlocBuilder(
          bloc: _semestreBloc,
          builder: (context, SemestreState state) {
            return Stack(children: <Widget>[
              TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      _buildEventBackdrop(),
                      TheSliver(
                          scrollController: _scrollController,
                          content: <Widget>[
                            _Header(),
                            Container(
                              padding: EdgeInsets.only(left: 15, top: 30),
                              child: const Text(
                                "Mis Cursos",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            state.isSuccesfull && state.response != null
                                ? Column(
                                    children: divide(state),
                                  )
                                : Container(),
                            state.isLoading
                                ? Container(
                                    margin:
                                        EdgeInsets.only(top: 40, bottom: 40),
                                    child: Center(
                                        child: CupertinoActivityIndicator()))
                                : state.noMoreResults
                                    ? SizedBox(
                                        height: 10,
                                      )
                                    : SizedBox(
                                        height: 200,
                                      ),
                          ]),
                    ],
                  ),
                  Container(
                    color: CupertinoColors.activeOrange,
                    height: 400,
                  ),
                  Container(
                    color: CupertinoColors.destructiveRed,
                    height: 400,
                    child: UaaButton('CERRAR SESIÓN', () {
                      BlocProvider.of<AuthBloc>(context).cerrarSesion();
                    }),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    color: colores['black'],
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TabBar(
                      indicatorColor: Colors.transparent,
                      labelColor: colores['white'],
                      labelStyle: TextStyle(
                        fontSize: 12
                      ),
                      unselectedLabelColor: Colors.white30,
                      labelPadding: EdgeInsets.all(0),
                      controller: _tabController,
                      tabs: <Widget>[
                        Tab(
                           //text: 'Mis Cursos',
                          icon: Icon(
                            Ecampus.book,
                          ),
                        ),
                        Tab(
                          //text: 'Noticias',
                          icon: Icon(
                            Ecampus.newspaper,
                          ),
                        ),
                        Tab(
                          //text: 'Perfil',
                          icon: Icon(
                            Ecampus.menu,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]);
          }),
    );
  }
}

class TheSliver extends StatelessWidget {
  const TheSliver({
    Key key,
    @required ScrollController scrollController,
    @required this.content,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;
  final List<Widget> content;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(content),
          ),
        ],
      ),
    );
  }
}

class TheBody extends StatelessWidget {
  SemestreState state;
  int indice;
  TheBody(
    this.state,
    this.indice, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color(0XFFEFEFF4),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            state.isSuccesfull
                ? state.response[indice].emptyYear != null
                    ? Container(
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.all(80),
                            child: Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                      'assets/images/nothingHere.png'),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'No tienes cursos en el ' +
                                      state.response[indice].emptyYear
                                          .toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Container(
                        //margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10, bottom: 20, top: 30),
                        child: Text(
                          state.response[indice].nombre,
                          style: new TextStyle(
                            color: colores['black'],
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      )
                : Container(),
            state.isLoading
                ? Container(
                    height: 130,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Container(
                    height: 0,
                  ),
            state.isSuccesfull && state.response[indice].emptyYear == null
                ? _buildResultList(state, indice)
                : Container(
                    height: 0,
                  ),
          ],
        ),
      ),
    );
  }
}

Widget _buildResultList(SemestreState searchState, int indice) {
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: .8,
      crossAxisSpacing: 6.0,
      mainAxisSpacing: 6.0,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 5.0,
    ),
    itemCount: searchState.response[indice].cursos.length,
    //controller: _scrollController,
    itemBuilder: (context, index) {
      return CursoUI(searchState.response[indice].cursos[index]);
    },
  );
}

Widget _buildListItemCard(Curso info) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            /* info.[0] != null ? Image.network(info.images[0]) : null, */
            Text(info.nombreAbreviadoMateria),
            /* Text(info.price.toString()), */
          ],
        ),
      ),
    ),
  );
}

class CursoUI extends StatelessWidget {
  /*  const Curso({
    Key key,
  }) : super(key: key);
 */
  const CursoUI(this.curso);
  final Curso curso;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            child: Image(
              image: AssetImage('assets/bgImages/1.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CursoPage(curso: curso),
                  ),
                );
              },
              splashColor: colores['red'].withOpacity(.3),
              highlightColor: colores['red'].withOpacity(.3),
              child: Container(
                /* height: 100, */

                margin: EdgeInsets.only(top: 15),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 40),
                        child: Text(
                          curso.nroCurso.toString() +
                              ' - ' +
                              curso.nombreAbreviadoMateria,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            wordSpacing: 1,
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 8,
                        ),
                      ),
                    ),
                    /* SizedBox(
                  height: 40,
                ), */
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            width: 50,
            height: 50,
            right: 0,
            bottom: 0,
            child: IgnorePointer(
              child: Container(
                child: Icon(
                   Ecampus.forward,
                  size: 15,
                  color: Colors.white,
                ),
                color: colores['red'],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // Declare a field that holds the Todo
  final Curso curso;

  // In the constructor, require a Todo
  DetailScreen({Key key, @required this.curso}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    return Scaffold(
      appBar: AppBar(
        title: Text(curso.nombreAbreviadoMateria),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(curso.nombreProfesor),
      ),
    );
  }
}
