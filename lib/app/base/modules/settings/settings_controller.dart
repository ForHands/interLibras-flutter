import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../models/config_tile_model.dart';

part 'settings_controller.g.dart';

@Injectable()
class SettingsController = _SettingsControllerBase with _$SettingsController;

abstract class _SettingsControllerBase with Store {
  ObservableList<ConfigTileModel> configTiles =
      ObservableList<ConfigTileModel>();

  @action
  void intializeTiles() {
    configTiles.clear();
    ConfigTileModel meuIdioma = ConfigTileModel(
      title: 'Meu Idioma',
      icon: Icons.translate,
    );
    ConfigTileModel minhaCarteira = ConfigTileModel(
      title: 'Minha Carteira',
      icon: Icons.account_balance,
    );

    ConfigTileModel termoDeUso = ConfigTileModel(
      title: 'Ver Termos de uso',
      icon: Icons.info,
    );

    ConfigTileModel daltonico = ConfigTileModel(
      title: 'Modo daltônico',
      icon: Icons.invert_colors,
    );

    ConfigTileModel compartilharApp = ConfigTileModel(
      title: 'Compartilhar App',
      icon: Icons.share,
    );

    ConfigTileModel avaliarApp = ConfigTileModel(
      title: 'Avaliar App',
      icon: Icons.star_outline,
    );

    ConfigTileModel excluirConta = ConfigTileModel(
      title: 'Excluir minha conta',
      icon: Icons.delete,
    );
    configTiles.add(meuIdioma);
    configTiles.add(minhaCarteira);
    configTiles.add(termoDeUso);
    configTiles.add(daltonico);
    configTiles.add(compartilharApp);
    configTiles.add(avaliarApp);
    configTiles.add(excluirConta);
  }
}
