import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

import 'drawer_tile.dart';

class MenuDrawer extends StatelessWidget {
  final Radius drawerRadius = Radius.circular(12.0);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final double drawerWidth =
        SizeConfig.screenWidth - (SizeConfig.screenWidth / 3);
    final double drawerHeight = SizeConfig.screenHeight;

    return Container(
      width: drawerWidth,
      height: drawerHeight,
      decoration: BoxDecoration(
        color: ThemeApp.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: drawerRadius,
          bottomLeft: drawerRadius,
        ),
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 64.0,
          ),
          DrawerTile('Configurações', Icons.settings, () {
            Modular.link.pushNamed('/settings');
          }),
          DrawerTile('Premium', Icons.star, () {}),
          DrawerTile('Tutorial', Icons.menu_book, () {}),
          DrawerTile('Sobre', Icons.help, () {
            Modular.link.pushNamed('/about');
          }),
          DrawerExit(),
        ],
      ),
    );
  }
}
