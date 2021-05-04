import 'package:flutter/material.dart';
import 'package:inter_libras/app/base/modules/home/modules/categorias/categorias_page.dart';
import 'package:inter_libras/app/base/modules/home/modules/dicionario/dicionario_page.dart';
import 'package:inter_libras/app/base/modules/home/modules/favoritos/favoritos_page.dart';
import 'package:inter_libras/app/base/modules/home/modules/historico/historico_page.dart';
import 'package:inter_libras/app/base/modules/home/modules/minhas_categorias/minhas_categorias_page.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../models/home_widget_model.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  ObservableList<HomeWidgetModel> cards = ObservableList<HomeWidgetModel>();

  @observable
  int homeIndexPage = 0;

  @action
  void setHomePage(int index) {
    homeIndexPage = index;
  }

  @action
  void intializeCards(BuildContext context) {
    cards.clear();
    HomeWidgetModel categorias = HomeWidgetModel(
        maxFontSize: 18,
        minFontSize: 14,
        name: 'Categorias',
        iconPressed: () {},
        assetName: 'assets/icons/categoria.png',
        action: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return CategoriasPage();
            }),
          );
        });

    HomeWidgetModel dicionario = HomeWidgetModel(
        maxFontSize: 18,
        minFontSize: 14,
        name: 'Dicionário',
        iconPressed: () {},
        assetName: 'assets/icons/dicionario.png',
        action: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return DicionarioPage();
            }),
          );
        });

    HomeWidgetModel favoritos = HomeWidgetModel(
        maxFontSize: 18,
        minFontSize: 14,
        name: 'Favoritos',
        iconPressed: () {},
        assetName: 'assets/icons/favortos.png',
        action: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return FavoritosPage();
            }),
          );
        });

    HomeWidgetModel minhasCategorias = HomeWidgetModel(
        maxFontSize: 18,
        minFontSize: 14,
        iconPressed: () {},
        name: 'Minhas Categorias',
        assetName: 'assets/icons/minhas_categorias.png',
        action: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return MinhasCategoriasPage();
            }),
          );
        });

    HomeWidgetModel historico = HomeWidgetModel(
        maxFontSize: 18,
        minFontSize: 14,
        name: 'Histórico',
        assetName: 'assets/icons/historico.png',
        iconPressed: () {},
        action: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return HistoricoPage();
            }),
          );
        });

    HomeWidgetModel removerPropagandas = HomeWidgetModel(
        maxFontSize: 18,
        minFontSize: 12,
        name: 'Remover Propragandas',
        iconPressed: () {},
        assetName: 'assets/icons/removeranucio.png',
        action: () {});


    cards.add(categorias);
    cards.add(dicionario);
    cards.add(favoritos);
    cards.add(minhasCategorias);
    cards.add(historico);
    cards.add(removerPropagandas);
  }

  @action
  Future<bool> handleWillPop() async {
    setHomePage(0);
    return false;
  }
}
