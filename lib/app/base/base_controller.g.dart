// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $BaseController = BindInject(
  (i) => BaseController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BaseController on _BaseControllerBase, Store {
  Computed<Widget> _$currentScreenComputed;

  @override
  Widget get currentScreen =>
      (_$currentScreenComputed ??= Computed<Widget>(() => super.currentScreen,
              name: '_BaseControllerBase.currentScreen'))
          .value;

  final _$currentPageAtom = Atom(name: '_BaseControllerBase.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$screenAtom = Atom(name: '_BaseControllerBase.screen');

  @override
  Widget get screen {
    _$screenAtom.reportRead();
    return super.screen;
  }

  @override
  set screen(Widget value) {
    _$screenAtom.reportWrite(value, super.screen, () {
      super.screen = value;
    });
  }

  final _$_BaseControllerBaseActionController =
      ActionController(name: '_BaseControllerBase');

  @override
  void setScreen(int page) {
    final _$actionInfo = _$_BaseControllerBaseActionController.startAction(
        name: '_BaseControllerBase.setScreen');
    try {
      return super.setScreen(page);
    } finally {
      _$_BaseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
screen: ${screen},
currentScreen: ${currentScreen}
    ''';
  }
}
