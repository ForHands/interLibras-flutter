import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'interpreter_controller.dart';

class InterpreterPage extends StatefulWidget {
  final String title;
  const InterpreterPage({Key key, this.title = "Interpreter"})
      : super(key: key);

  @override
  _InterpreterPageState createState() => _InterpreterPageState();
}

class _InterpreterPageState
    extends ModularState<InterpreterPage, InterpreterController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Column(
            children: <Widget>[],
          ),
        ));
  }
}
