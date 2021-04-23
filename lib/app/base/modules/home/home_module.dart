
import 'package:flutter_modular/flutter_modular.dart';
import 'package:inter_libras/app/base/modules/home/modules/categorias/categorias_controller.dart';

import 'home_controller.dart';
import 'home_page.dart';
import 'modules/categorias/categorias_module.dart';
import 'modules/dicionario/dicionario_controller.dart';
import 'modules/dicionario/dicionario_module.dart';
import 'modules/favoritos/favoritos_controller.dart';
import 'modules/favoritos/favoritos_module.dart';
import 'modules/historico/historico_controller.dart';
import 'modules/historico/historico_module.dart';
import 'modules/minhas_categorias/minhas_categorias_controller.dart';
import 'modules/minhas_categorias/minhas_categorias_module.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => CategoriasController()),
        Bind((i) => DicionarioController()),
        Bind((i) => HistoricoController()),
        Bind((i) => FavoritosController()),
        Bind((i) => MinhasCategoriasController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter('/categorias', module: CategoriasModule()),
        ModularRouter('/dicionario', module: DicionarioModule()),
        ModularRouter('/favoritos', module: FavoritosModule()),
        ModularRouter('/historico', module: HistoricoModule()),
        ModularRouter('/minhasCategorias', module: MinhasCategoriasModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
