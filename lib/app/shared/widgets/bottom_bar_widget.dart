import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/base/base_controller.dart';
import 'package:interLibras/app/shared/utils/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarWidget extends StatefulWidget {
  BottomBarWidget({Key key}) : super(key: key);

  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  var baseController = Modular.get<BaseController>();
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: ThemeApp.accentColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              if (baseController.currentPage != 0) {
                baseController.setScreen(0);
              }
            },
            icon: Icon(
              Icons.home,
              color: baseController.currentPage == 0
                  ? ThemeApp.primaryColor
                  : ThemeApp.getThemeData.disabledColor,
              size: 30,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (baseController.currentPage != 1) {
                baseController.setScreen(1);
              }
            },
            child: SvgPicture.asset(
              'assets/icons/school.svg',
              color: baseController.currentPage == 1
                  ? ThemeApp.primaryColor
                  : ThemeApp.getThemeData.disabledColor,
              height: 25,
              width: 25,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (baseController.currentPage != 2) {
                baseController.setScreen(2);
              }
            },
            child: SvgPicture.asset(
              'assets/icons/interpreter.svg',
              color: baseController.currentPage == 2
                  ? ThemeApp.primaryColor
                  : ThemeApp.getThemeData.disabledColor,
              height: 28,
              width: 28,
            ),
          ),
          IconButton(
            onPressed: () {
              if (baseController.currentPage != 3) {
                baseController.setScreen(3);
              }
            },
            icon: Icon(
              Icons.person,
              color: baseController.currentPage == 3
                  ? ThemeApp.primaryColor
                  : ThemeApp.getThemeData.disabledColor,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
