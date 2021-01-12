import 'academy_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'academy_page.dart';

class AcademyModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $AcademyController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => AcademyPage()),
      ];

  static Inject get to => Inject<AcademyModule>.of();
}
