
import 'package:flutter_modular/flutter_modular.dart';

import 'interpreter_controller.dart';
import 'interpreter_page.dart';

class InterpreterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => InterpreterController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => InterpreterPage()),
      ];

  static Inject get to => Inject<InterpreterModule>.of();
}
