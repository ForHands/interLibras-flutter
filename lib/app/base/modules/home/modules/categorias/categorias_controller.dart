import 'package:interLibras/app/shared/models/category_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'categorias_controller.g.dart';

@Injectable()
class CategoriasController = _CategoriasControllerBase
    with _$CategoriasController;

abstract class _CategoriasControllerBase with Store {
  ObservableList<CategoryModel> categories = ObservableList<CategoryModel>();

  @action
  void initializeCategories() {
    categories.clear();
    CategoryModel defaultCat = CategoryModel.newCat();
    categories.add(defaultCat);
  }
}
