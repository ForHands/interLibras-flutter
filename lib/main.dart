import 'package:flutter/material.dart';

import 'components/drawer/menu.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      endDrawer: MenuDrawer(),
    );
  }
}
