import 'base_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'base_page.dart';
import 'modules/academy/academy_controller.dart';
import 'modules/home/home_controller.dart';
import 'modules/home/modules/categorias/categorias_controller.dart';
import 'modules/home/modules/dicionario/dicionario_controller.dart';
import 'modules/home/modules/favoritos/favoritos_controller.dart';
import 'modules/home/modules/historico/historico_controller.dart';
import 'modules/home/modules/minhas_categorias/minhas_categorias_controller.dart';
import 'modules/interpreter/interpreter_controller.dart';
import 'modules/profile/profile_controller.dart';

class BaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $BaseController,
        $HomeController,
        $ProfileController,
        $InterpreterController,
        $AcademyController,
        $CategoriasController,
        $DicionarioController,
        $FavoritosController,
        $HistoricoController,
        $MinhasCategoriasController
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => BasePage()),
      ];

  static Inject get to => Inject<BaseModule>.of();
}
