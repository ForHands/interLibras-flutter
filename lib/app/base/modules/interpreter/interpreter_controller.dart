import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'interpreter_controller.g.dart';

@Injectable()
class InterpreterController = _InterpreterControllerBase
    with _$InterpreterController;

abstract class _InterpreterControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
