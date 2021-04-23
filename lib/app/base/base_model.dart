import 'package:flutter_modular/flutter_modular.dart';
import 'base_page.dart';
import 'modules/about/about_module.dart';
import 'modules/settings/settings_module.dart';

class BaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        /*$BaseController,
        $HomeController,
        $ProfileController,
        $InterpreterController,
        $AcademyController,
        $CategoriasController,
        $DicionarioController,
        $FavoritosController,
        $HistoricoController,
        $MinhasCategoriasController*/
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => BasePage()),
        ModularRouter('/settings', module: SettingsModule()),
        ModularRouter('/about', module: AboutModule()),
      ];

  static Inject get to => Inject<BaseModule>.of();
}
