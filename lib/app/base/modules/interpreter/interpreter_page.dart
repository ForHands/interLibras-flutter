import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/shared/widgets/app_bar_widget.dart';
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
    return Scaffold(
        appBar: AppBarWidget(
          iconPressed: () {},
          screeName: widget.title,
          language: 'Brasil',
        ),
        body: Container());
  }
}
