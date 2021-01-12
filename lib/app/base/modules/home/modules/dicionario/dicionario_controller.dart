import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'dicionario_controller.g.dart';

@Injectable()
class DicionarioController = _DicionarioControllerBase
    with _$DicionarioController;

abstract class _DicionarioControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
