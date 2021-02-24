import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/shared/widgets/app_bar_widget.dart';
import 'interpreter_controller.dart';

import 'package:interLibras/app/shared/widgets/avatar_3d.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'modules/search_button.dart';

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
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Avatar3d(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight - 160,
            ),
            Search(),
          ],
        ),
      ),
    );
  }
}
