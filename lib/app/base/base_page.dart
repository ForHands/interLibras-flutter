import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'package:interLibras/app/shared/widgets/app_bar_widget.dart';
import 'package:interLibras/app/shared/widgets/bottom_bar_widget.dart';

import 'base_controller.dart';

class BasePage extends StatefulWidget {
  final String title;
  const BasePage({Key key, this.title = "Base"}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends ModularState<BasePage, BaseController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Observer(
          builder: (_) {
            return Scaffold(
                appBar: AppBarWidget(
                  language: 'Brasil',
                  screeName: controller.screenName,
                  iconPressed: () {},
                ),
                bottomNavigationBar: BottomBarWidget(),
                body: controller.screen);
          },
        ));
  }
}
