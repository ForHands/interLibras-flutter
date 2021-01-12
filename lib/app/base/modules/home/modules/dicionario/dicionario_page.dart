import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dicionario_controller.dart';

class DicionarioPage extends StatefulWidget {
  final String title;
  const DicionarioPage({Key key, this.title = "Dicionario"}) : super(key: key);

  @override
  _DicionarioPageState createState() => _DicionarioPageState();
}

class _DicionarioPageState
    extends ModularState<DicionarioPage, DicionarioController> {
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
