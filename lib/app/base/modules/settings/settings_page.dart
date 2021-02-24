import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'package:interLibras/app/shared/widgets/app_bar_widget.dart';
import 'package:interLibras/app/shared/widgets/config_component_widget.dart';
import 'settings_controller.dart';

class SettingsPage extends StatefulWidget {
  final String title;
  const SettingsPage({Key key, this.title = "Settings"}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState
    extends ModularState<SettingsPage, SettingsController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    controller.intializeTiles();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBarWidgetNoLang(
        iconPressed: () {},
        screeName: 'Configurações',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: controller.configTiles.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 5),
                  child: ConfigComponentWidget(
                    title: controller.configTiles[index].title,
                    icon: controller.configTiles[index].icon,
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              Image.asset('assets/images/hand.png'),
              Text(
                'Versão 1.00.001',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ],
      ),
    );
  }
}
