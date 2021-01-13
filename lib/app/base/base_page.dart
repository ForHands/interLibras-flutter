import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/shared/widgets/bottom_bar_widget.dart';
import 'base_controller.dart';

class BasePage extends StatefulWidget {
  final String title;
  const BasePage({Key key, this.title = "Base"}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends ModularState<BasePage, BaseController> {
  @override
  void initState() {
    super.initState();
    controller.tabs.asMap().forEach((index, details) {
      details.setIndex(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text('settings'),
          onPressed: () {
            Modular.link.pushNamed('/settings');
          },
        ),
        RaisedButton(
          child: Text('about'),
          onPressed: () {
            Modular.link.pushNamed('/about');
          },
        ),
      ],
    );
  }
  /*return Observer(
      builder: (_) {
        return WillPopScope(
          onWillPop: controller.handleWillPop,
          child: Scaffold(
            body: IndexedStack(
              index: controller.currentTab,
              children: controller.tabs.map((e) => e.page).toList(),
            ),
            bottomNavigationBar: BottomBarWidget(
              onSelectTab: (index) => controller.selectTab(index, false),
              tabs: controller.tabs,
            ),
          ),
        );
      },
    );
  }*/
}
