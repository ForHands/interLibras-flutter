import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'historico_controller.dart';

class HistoricoPage extends StatefulWidget {
  final String title;
  const HistoricoPage({Key key, this.title = "Historico"}) : super(key: key);

  @override
  _HistoricoPageState createState() => _HistoricoPageState();
}

class _HistoricoPageState
    extends ModularState<HistoricoPage, HistoricoController> {
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
