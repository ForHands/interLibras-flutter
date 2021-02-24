import 'package:interLibras/app/shared/models/home_widget_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
  void intializeCards() {
    cards.clear();
    HomeWidgetModel categorias = HomeWidgetModel(
        maxFontSize: 18,
        minFontSize: 14,
        name: 'Categorias',
        iconPressed: () {},
        assetName: 'assets/icons/categoria.png',
        action: () {
          setHomePage(1);
        });

    HomeWidgetModel dicionario = HomeWidgetModel(
        maxFontSize: 18,
        minFontSize: 14,
        name: 'Dicionário',
        iconPressed: () {},
        assetName: 'assets/icons/dicionario.png',
        action: () {
          setHomePage(2);
        });

    HomeWidgetModel favoritos = HomeWidgetModel(
        maxFontSize: 18,
        minFontSize: 14,
        name: 'Favoritos',
        iconPressed: () {},
        assetName: 'assets/icons/favortos.png',
        action: () {
          setHomePage(3);
        });

    HomeWidgetModel historico = HomeWidgetModel(
        maxFontSize: 18,
        minFontSize: 14,
        name: 'Histórico',
        iconPressed: () {},
        assetName: 'assets/icons/minhas_categorias.png',
        action: () {
          setHomePage(4);
        });

    HomeWidgetModel minhasCategorias = HomeWidgetModel(
        maxFontSize: 18,
        minFontSize: 14,
        name: 'Minhas Categorias',
        iconPressed: () {},
        assetName: 'assets/icons/historico.png',
        action: () {
          setHomePage(5);
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
    cards.add(historico);
    cards.add(minhasCategorias);
    cards.add(removerPropagandas);
  }

  @action
  Future<bool> handleWillPop() async {
    setHomePage(0);
    return false;
  }
}
