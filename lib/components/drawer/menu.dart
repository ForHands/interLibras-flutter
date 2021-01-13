import 'package:flutter/material.dart';

import 'itens.dart';

class MenuDrawer extends StatelessWidget {
  final Radius drawerRadius = Radius.circular(12.0);
  final Color color = Color(0xFF05F0AA);

  @override
  Widget build(BuildContext context) {
    final double drawerWidth = (MediaQuery.of(context).size.width) -
        (MediaQuery.of(context).size.width / 3);
    final double drawerHeight = MediaQuery.of(context).size.height;

    return Container(
      width: drawerWidth,
      height: drawerHeight,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.only(
          topLeft: drawerRadius,
          bottomLeft: drawerRadius,
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child: DrawerTile('Configurações', Icons.settings),
          ),
          DrawerTile('Premium', Icons.star),
          DrawerTile('Tutorial', Icons.menu_book),
          DrawerTile('Sobre', Icons.help),
          DrawerExit(),
        ],
      ),
    );
  }
}
