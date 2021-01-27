import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/base/modules/home/modules/categorias/categorias_page.dart';
import 'package:interLibras/app/base/modules/home/modules/dicionario/dicionario_page.dart';
import 'package:interLibras/app/base/modules/home/modules/favoritos/favoritos_page.dart';
import 'package:interLibras/app/base/modules/home/modules/historico/historico_page.dart';
import 'package:interLibras/app/base/modules/home/modules/minhas_categorias/minhas_categorias_page.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'package:interLibras/app/shared/widgets/app_bar_widget.dart';
import 'package:interLibras/app/shared/widgets/home_card_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    controller.intializeCards();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Observer(builder: (_) {
      return WillPopScope(
          onWillPop: controller.handleWillPop,
          child: Scaffold(
              appBar: AppBarWidget(
                iconPressed: () {},
                screeName: widget.title,
                language: 'Brasil',
              ),
              body: IndexedStack(
                index: controller.homeIndexPage,
                children: [
                  BodyHome(),
                  CategoriasPage(),
                  DicionarioPage(),
                  FavoritosPage(),
                  HistoricoPage(),
                  MinhasCategoriasPage(),
                ],
              )));
    });
  }
}

class BodyHome extends StatefulWidget {
  BodyHome({Key key}) : super(key: key);

  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  final controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: controller.cards.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        itemBuilder: (BuildContext ctxt, int index) {
          return new Padding(
            padding: EdgeInsets.all(3),
            child: HomeCardWidget(
              maxFontSize: controller.cards[index].maxFontSize,
              minFontSize: controller.cards[index].minFontSize,
              name: controller.cards[index].name,
              assetName: controller.cards[index].assetName,
              action: controller.cards[index].action,
              iconPressed: controller.cards[index].iconPressed,
            ),
          );
        });
  }
}
