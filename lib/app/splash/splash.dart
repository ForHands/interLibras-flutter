import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../shared/utils/size_config.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    loadData();
  }

  loadData() async {
    Future.delayed(Duration(seconds: 0)).then((_) async {
      await Modular.to.pushReplacementNamed('/base');
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      child: Center(
          child: Image.asset(
        'assets/images/hand.png',
        height: SizeConfig.screenHeight - 100,
        width: SizeConfig.screenWidth - 100,
      )),
    );
  }
}
