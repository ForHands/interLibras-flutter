import 'minhas_categorias_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'minhas_categorias_page.dart';

class MinhasCategoriasModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $MinhasCategoriasController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => MinhasCategoriasPage()),
      ];

  static Inject get to => Inject<MinhasCategoriasModule>.of();
}
