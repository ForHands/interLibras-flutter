import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'minhas_categorias_controller.dart';

class MinhasCategoriasPage extends StatefulWidget {
  final String title;
  const MinhasCategoriasPage({Key key, this.title = "MinhasCategorias"})
      : super(key: key);

  @override
  _MinhasCategoriasPageState createState() => _MinhasCategoriasPageState();
}

class _MinhasCategoriasPageState
    extends ModularState<MinhasCategoriasPage, MinhasCategoriasController> {
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
