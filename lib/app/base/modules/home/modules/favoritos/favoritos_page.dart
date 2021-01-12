import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'favoritos_controller.dart';

class FavoritosPage extends StatefulWidget {
  final String title;
  const FavoritosPage({Key key, this.title = "Favoritos"}) : super(key: key);

  @override
  _FavoritosPageState createState() => _FavoritosPageState();
}

class _FavoritosPageState
    extends ModularState<FavoritosPage, FavoritosController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
