
import 'package:flutter_modular/flutter_modular.dart';

import 'dicionario_controller.dart';
import 'dicionario_page.dart';

class DicionarioModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DicionarioController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => DicionarioPage()),
      ];

  static Inject get to => Inject<DicionarioModule>.of();
}
