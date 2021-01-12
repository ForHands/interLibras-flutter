import 'dicionario_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'dicionario_page.dart';

class DicionarioModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $DicionarioController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => DicionarioPage()),
      ];

  static Inject get to => Inject<DicionarioModule>.of();
}
