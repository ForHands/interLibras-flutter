import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'minhas_categorias_controller.g.dart';

@Injectable()
class MinhasCategoriasController = _MinhasCategoriasControllerBase
    with _$MinhasCategoriasController;

abstract class _MinhasCategoriasControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
