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
        name: 'Categorias',
        iconPressed: () {},
        assetName: 'assets/icons/school.svg',
        action: () {
          setHomePage(1);
        });

    HomeWidgetModel dicionario = HomeWidgetModel(
        name: 'Dicionário',
        iconPressed: () {},
        assetName: 'assets/icons/school.svg',
        action: () {
          setHomePage(2);
        });

    HomeWidgetModel favoritos = HomeWidgetModel(
        name: 'Favoritos',
        iconPressed: () {},
        assetName: 'assets/icons/school.svg',
        action: () {
          setHomePage(3);
        });

    HomeWidgetModel historico = HomeWidgetModel(
        name: 'Histórico',
        iconPressed: () {},
        assetName: 'assets/icons/school.svg',
        action: () {
          setHomePage(4);
        });

    HomeWidgetModel minhasCategorias = HomeWidgetModel(
        name: 'Minhas Categorias',
        iconPressed: () {},
        assetName: 'assets/icons/school.svg',
        action: () {
          setHomePage(5);
        });

    HomeWidgetModel removerPropagandas = HomeWidgetModel(
        name: 'Remover Propragandas',
        iconPressed: () {},
        assetName: 'assets/icons/school.svg',
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
