import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interLibras/app/base/base_controller.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

class BottomBarWidget extends StatelessWidget {
  BottomBarWidget({
    this.onSelectTab,
    this.tabs,
  });
  final ValueChanged<int> onSelectTab;
  final List<dynamic> tabs;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: ThemeApp.accentColor,
      type: BottomNavigationBarType.fixed,
      items: tabs
          .map(
            (e) => _buildItem(
              index: e.getIndex(),
              icon: e.icon,
              tabName: e.tabName,
              size: e.size,
              svg: e.svg,
            ),
          )
          .toList(),
      onTap: (index) => onSelectTab(
        index,
      ),
    );
  }

  BottomNavigationBarItem _buildItem({
    int index,
    IconData icon,
    String tabName,
    String svg,
    double size,
  }) {
    return BottomNavigationBarItem(
      icon: icon != null
          ? Icon(
              icon,
              color: _tabColor(index: index),
              size: size,
            )
          : SvgPicture.asset(
              svg,
              height: 28,
              width: 28,
              color: _tabColor(index: index),
            ),
      title: Text(
        tabName,
        style: TextStyle(
          color: _tabColor(index: index),
          fontSize: 16,
        ),
      ),
    );
  }

  Color _tabColor({
    int index,
  }) {
    final baseController = Modular.get<BaseController>();
    return baseController.currentTab == index
        ? ThemeApp.primaryColor
        : ThemeApp.getThemeData.disabledColor;
  }
}
