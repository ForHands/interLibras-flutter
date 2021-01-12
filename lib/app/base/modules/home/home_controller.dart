import 'package:interLibras/app/shared/models/home_widget_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  HomeWidgetModel categorias = HomeWidgetModel(
      name: 'Categorias',
      iconPressed: () {},
      assetName: 'assets/icons/school.svg',
      action: () {
        Modular.link.pushNamed('/home/categorias');
      });

  HomeWidgetModel dicionario = HomeWidgetModel(
      name: 'Dicionário',
      iconPressed: () {},
      assetName: 'assets/icons/school.svg',
      action: () {
        Modular.link.pushNamed('/home/dicionario');
      });

  HomeWidgetModel favoritos = HomeWidgetModel(
      name: 'Favoritos',
      iconPressed: () {},
      assetName: 'assets/icons/school.svg',
      action: () {
        Modular.link.pushNamed('/home/favoritos');
      });

  HomeWidgetModel historico = HomeWidgetModel(
      name: 'Histórico',
      iconPressed: () {},
      assetName: 'assets/icons/school.svg',
      action: () {
        Modular.link.pushNamed('/home/historico');
      });

  HomeWidgetModel minhasCategorias = HomeWidgetModel(
      name: 'Minhas Categorias',
      iconPressed: () {},
      assetName: 'assets/icons/school.svg',
      action: () {
        Modular.link.pushNamed('/home/minhasCategorias');
      });

  HomeWidgetModel removerPropagandas = HomeWidgetModel(
      name: 'Remover Propragandas',
      iconPressed: () {},
      assetName: 'assets/icons/school.svg',
      action: () {});

  ObservableList<HomeWidgetModel> cards = ObservableList<HomeWidgetModel>();

  @action
  void intializeCards() {
    cards.clear();
    cards.add(categorias);
    cards.add(dicionario);
    cards.add(favoritos);
    cards.add(historico);
    cards.add(minhasCategorias);
    cards.add(removerPropagandas);
  }
}
