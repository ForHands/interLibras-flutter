import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../base/base_controller.dart';

class TabItem {
  final String svg;
  final double size;
  final IconData icon;
  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();
  int _index = 0;
  Widget _page;
  TabItem({
    @required this.icon,
    this.svg,
    this.size,
    @required Widget page,
  }) {
    _page = page;
  }
  void setIndex(int i) {
    _index = i;
  }

  int getIndex() => _index;

  Widget get page {
    final baseController = Modular.get<BaseController>();
    return Visibility(
      visible: _index == baseController.currentTab,
      maintainState: true,
      child: Navigator(
        key: key,
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (_) => _page,
          );
        },
      ),
    );
  }
}
