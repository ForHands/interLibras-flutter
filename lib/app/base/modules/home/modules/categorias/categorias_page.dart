import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/shared/widgets/category_card_widget.dart';
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
  void initState() {
    super.initState();
    controller.initializeCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: controller.categories.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return Padding(
            padding: EdgeInsets.only(top: 10, bottom: 5),
            child: CategoryCard(category: controller.categories[index]),
          );
        },
      ),
    );
  }
}
