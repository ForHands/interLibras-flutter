import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:inter_libras/app/shared/widgets/app_bar_widget.dart';
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
      appBar: AppBarWidget(
        screeName: 'Favoritos', 
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
