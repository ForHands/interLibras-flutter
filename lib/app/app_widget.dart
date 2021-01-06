import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Modular.navigatorKey,
      title: 'Intersign',
      theme: ThemeApp.getThemeData,
      initialRoute: '/home',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
