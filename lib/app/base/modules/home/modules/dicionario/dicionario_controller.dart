import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'dicionario_controller.g.dart';

@Injectable()
class DicionarioController = _DicionarioControllerBase
    with _$DicionarioController;

abstract class _DicionarioControllerBase with Store {
  ObservableList<String> listDic = ObservableList<String>();

  void initList() {
    for (var i = 65; i <= 90; i++) {
      listDic.add('Letra ${String.fromCharCode(i)}');
    }
  }
}
