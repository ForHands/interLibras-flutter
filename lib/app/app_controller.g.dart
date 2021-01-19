// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AppController = BindInject(
  (i) => AppController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$currentLanguageAtom =
      Atom(name: '_AppControllerBase.currentLanguage');

  @override
  LanguageModel get currentLanguage {
    _$currentLanguageAtom.reportRead();
    return super.currentLanguage;
  }

  @override
  set currentLanguage(LanguageModel value) {
    _$currentLanguageAtom.reportWrite(value, super.currentLanguage, () {
      super.currentLanguage = value;
    });
  }

  final _$_AppControllerBaseActionController =
      ActionController(name: '_AppControllerBase');

  @override
  dynamic changeCurrentLanguage(LanguageModel language) {
    final _$actionInfo = _$_AppControllerBaseActionController.startAction(
        name: '_AppControllerBase.changeCurrentLanguage');
    try {
      return super.changeCurrentLanguage(language);
    } finally {
      _$_AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentLanguage: ${currentLanguage}
    ''';
  }
}
