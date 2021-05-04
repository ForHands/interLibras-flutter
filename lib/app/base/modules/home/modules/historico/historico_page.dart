import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:inter_libras/app/shared/widgets/app_bar_widget.dart';
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
      appBar: AppBarWidget(
        screeName: 'Hístorico', 
        language: 'Brasil', 
        iconPressed: (){},
        enableBack:true,
        backPressed:(){
          Navigator.of(context).pop();
        }),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
