import 'base_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'base_page.dart';
import 'modules/academy/academy_controller.dart';
import 'modules/academy/academy_module.dart';
import 'modules/home/home_controller.dart';
import 'modules/home/home_module.dart';
import 'modules/interpreter/interpreter_controller.dart';
import 'modules/interpreter/interpreter_module.dart';
import 'modules/profile/profile_controller.dart';
import 'modules/profile/profile_module.dart';

class BaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $BaseController,
        $HomeController,
        $ProfileController,
        $InterpreterController,
        $AcademyController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => BasePage()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/profile', module: ProfileModule()),
        ModularRouter('/interpreter', module: InterpreterModule()),
        ModularRouter('/academy', module: AcademyModule()),
      ];

  static Inject get to => Inject<BaseModule>.of();
}
