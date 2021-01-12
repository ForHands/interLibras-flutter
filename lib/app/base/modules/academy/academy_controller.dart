import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'academy_controller.g.dart';

@Injectable()
class AcademyController = _AcademyControllerBase with _$AcademyController;

abstract class _AcademyControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
