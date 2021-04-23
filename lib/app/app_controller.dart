import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'base/models/language_model.dart';
part 'app_controller.g.dart';

@Injectable()
class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  LanguageModel currentLanguage = LanguageModel(language: "LIBRAS", flag: 'br');

  final String frontFlag = 'assets/images/linguagem.png';
  final String backFlag = 'assets/images/Linguagem_asl.png';

  @action
  changeCurrentLanguage(LanguageModel language) => currentLanguage = language;
}
