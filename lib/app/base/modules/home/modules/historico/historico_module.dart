
import 'package:flutter_modular/flutter_modular.dart';

import 'historico_controller.dart';
import 'historico_page.dart';

class HistoricoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HistoricoController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => HistoricoPage()),
      ];

  static Inject get to => Inject<HistoricoModule>.of();
}
