import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:inter_libras/app/shared/widgets/app_bar_widget.dart';
import 'package:inter_libras/app/shared/widgets/category_card_widget.dart';
import 'item_view/item_view_page.dart';
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
  void initState() {
    super.initState();
    controller.initializeCategories();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        screeName: 'Minhas Categorias', 
        language: 'Brasil', 
        iconPressed: (){},
        enableBack:true,
        backPressed:(){
          Navigator.of(context).pop();
        }),
      body: Observer(builder: (_) {
      return IndexedStack(
        index: controller.categoriesIndexPage,
        children: [
          ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: controller.categories.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return Padding(
              padding: EdgeInsets.only(top: 10, bottom: 5, right: 10, left: 10),
              child: CategoryCard(
                category: controller.categories[index],
                selectCategorie: () {
                  controller.selectCategorie(controller.categories[index]);
                },
              ),
            );
          },
        ),
          ItemViewPage(
            items: controller.selectedCategory?.items,
          )
        ],
      );
    }));
  }
}
