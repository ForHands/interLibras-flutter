import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interLibras/app/shared/widgets/tab_item_widget.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/academy/academy_page.dart';
import 'modules/home/home_controller.dart';
import 'modules/home/home_page.dart';
import 'modules/interpreter/interpreter_page.dart';
import 'modules/profile/profile_page.dart';

part 'base_controller.g.dart';

@Injectable()
class BaseController = _BaseControllerBase with _$BaseController;

abstract class _BaseControllerBase with Store {
  final homeController = Modular.get<HomeController>();

  @observable
  int currentTab = 0;

  ObservableList<int> lastTab = ObservableList<int>();

  final List<TabItem> tabs = [
    TabItem(
        tabName: "Home",
        icon: Icons.home,
        page: HomePage(),
        size: 30,
        svg: null),
    TabItem(
      tabName: "Ensino",
      svg: 'assets/icons/school.svg',
      icon: null,
      size: null,
      page: AcademyPage(),
    ),
    TabItem(
      svg: 'assets/icons/interpreter.svg',
      tabName: "Interpreter",
      size: null,
      icon: null,
      page: InterpreterPage(),
    ),
    TabItem(
        tabName: "Perfil",
        icon: Icons.person,
        page: ProfilePage(),
        size: 30,
        svg: null),
  ];

  @action
  void selectTab(int index, bool backButton) {
    if (index == currentTab) {
      tabs[index].key.currentState.popUntil((route) => route.isFirst);
    } else {
      if (!backButton) {
        lastTab.add(currentTab);
      }
      currentTab = index;
    }
  }

  @action
  Future<bool> handleWillPop() async {
    if (currentTab == 0 || lastTab[lastTab.length - 1] == 0) {
      selectTab(0, true);
      homeController.setHomePage(0);
      return false;
    }
    final isFirstRouteInCurrentTab =
        !await tabs[currentTab].key.currentState.maybePop();
    if (isFirstRouteInCurrentTab) {
      if (currentTab != 0) {
        selectTab(lastTab[lastTab.length - 1], true);
        lastTab.removeLast();
        return false;
      }
    }
    return isFirstRouteInCurrentTab;
  }
}
