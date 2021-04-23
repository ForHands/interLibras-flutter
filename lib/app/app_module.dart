import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'app_widget.dart';
import 'base/base_model.dart';
import 'splash/splash.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => SplashPage()),
        ModularRouter('/base', module: BaseModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
