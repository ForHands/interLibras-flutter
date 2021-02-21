import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/base/modules/home/modules/categorias/modules/item_view/item_view_page.dart';
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
    return Scaffold(body: Observer(builder: (_) {
      return IndexedStack(
        index: controller.categoriesIndexPage,
        children: [
          BodyCategories(),
          ItemViewPage(
            items: controller.selectedCategory?.items,
          )
        ],
      );
    }));
  }
}

class BodyCategories extends StatefulWidget {
  BodyCategories({Key key}) : super(key: key);

  @override
  _BodyCategoriesState createState() => _BodyCategoriesState();
}

class _BodyCategoriesState extends State<BodyCategories> {
  final controller = Modular.get<CategoriasController>();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
    );
  }
}
