
import 'package:flutter_modular/flutter_modular.dart';
import 'package:inter_libras/app/base/modules/profile/profile_controller.dart';

import 'profile_page.dart';

class ProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProfileController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => ProfilePage()),
      ];

  static Inject get to => Inject<ProfileModule>.of();
}
