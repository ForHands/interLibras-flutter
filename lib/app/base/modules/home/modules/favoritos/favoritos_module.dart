import 'favoritos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'favoritos_page.dart';

class FavoritosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $FavoritosController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => FavoritosPage()),
      ];

  static Inject get to => Inject<FavoritosModule>.of();
}
