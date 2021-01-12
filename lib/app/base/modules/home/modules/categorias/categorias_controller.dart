import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'categorias_controller.g.dart';

@Injectable()
class CategoriasController = _CategoriasControllerBase
    with _$CategoriasController;

abstract class _CategoriasControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
