import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:inter_libras/app/shared/widgets/app_bar_widget.dart';
import 'categorias_controller.dart';

class CategoriasPage extends StatefulWidget {
  final String title;
  const CategoriasPage({Key key, this.title = "Categorias"}) : super(key: key);

  @override
  _CategoriasPageState createState() => _CategoriasPageState();
}

class _CategoriasPageState
    extends ModularState<CategoriasPage, CategoriasController> {
  //use 'controller' variable to access controller


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        screeName: 'Categorias', 
        language: 'Brasil', 
        iconPressed: (){},
        enableBack:true,
        backPressed:(){
          Navigator.of(context).pop();
        }),
      body: Container());
  }
}

