import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/academy/academy_page.dart';
import 'modules/home/home_page.dart';
import 'modules/interpreter/interpreter_page.dart';
import 'modules/profile/profile_page.dart';

part 'base_controller.g.dart';

@Injectable()
class BaseController = _BaseControllerBase with _$BaseController;

abstract class _BaseControllerBase with Store {
  @observable
  int currentPage = 0;

  @observable
  Widget screen = HomePage();

  @computed
  Widget get currentScreen => screen;

  @action
  void setScreen(int page) {
    currentPage = page;
    switch (page) {
      case 0:
        screen = HomePage();
        break;
      case 1:
        screen = AcademyPage();
        break;
      case 2:
        screen = InterpreterPage();
        break;
      case 3:
        screen = ProfilePage();
        break;
      default:
    }
  }
}
