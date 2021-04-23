
import 'package:flutter_modular/flutter_modular.dart';

import 'categorias_controller.dart';
import 'categorias_page.dart';

class CategoriasModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CategoriasController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CategoriasPage()),
      ];

  static Inject get to => Inject<CategoriasModule>.of();
}
