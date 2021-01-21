import 'package:interLibras/app/shared/models/language_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'app_controller.g.dart';

@Injectable()
class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  LanguageModel currentLanguage = LanguageModel(language: "LIBRAS", flag: 'br');

  @action
  changeCurrentLanguage(LanguageModel language) => currentLanguage = language;
}
