import 'package:inter_libras/app/app_controller.dart';
import 'package:inter_libras/app/base/models/category_model.dart';
import 'package:inter_libras/app/shared/widgets/item_card_widget.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'minhas_categorias_controller.g.dart';

@Injectable()
class MinhasCategoriasController = _MinhasCategoriasControllerBase
    with _$MinhasCategoriasController;

abstract class _MinhasCategoriasControllerBase with Store {
  final appController = Modular.get<AppController>();

  ObservableList<CategoryModel> categories = ObservableList<CategoryModel>();

  // ignore: deprecated_member_use
  List<ItemWidget> items = List<ItemWidget>();

  @observable
  CategoryModel selectedCategory;

  @observable
  int categoriesIndexPage = 0;

  @action
  void selectCategorie(CategoryModel categorySelected) {
    selectedCategory = categorySelected;
    categoriesIndexPage = 1;
  }

  @action
  void initializeCategories() {
    items.clear();
    categories.clear();
    ItemWidget teste1 = ItemWidget(
        favorite: true,
        name: 'teeste1',
        englishName: 'test1',
        image: 'assets/images/hand.png',
        pressedFavorite: null,
        frontFlag: appController.frontFlag,
        backFlag: appController.backFlag);
    ItemWidget teste2 = ItemWidget(
        favorite: false,
        name: 'teeste2',
        englishName: 'test2',
        image: 'assets/images/hand.png',
        pressedFavorite: null,
        frontFlag: appController.frontFlag,
        backFlag: appController.backFlag);
    items.add(teste1);
    items.add(teste2);
    CategoryModel defaultCat = CategoryModel.newCat();
    CategoryModel teste = CategoryModel(
        newCategory: false, name: 'Vaique', urlsImages: [], items: items);
    categories.add(defaultCat);
    categories.add(teste);
  }
}
