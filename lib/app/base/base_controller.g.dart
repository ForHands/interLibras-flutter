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
  final _$currentTabAtom = Atom(name: '_BaseControllerBase.currentTab');

  @override
  int get currentTab {
    _$currentTabAtom.reportRead();
    return super.currentTab;
  }

  @override
  set currentTab(int value) {
    _$currentTabAtom.reportWrite(value, super.currentTab, () {
      super.currentTab = value;
    });
  }

  final _$handleWillPopAsyncAction =
      AsyncAction('_BaseControllerBase.handleWillPop');

  @override
  Future<bool> handleWillPop() {
    return _$handleWillPopAsyncAction.run(() => super.handleWillPop());
  }

  final _$_BaseControllerBaseActionController =
      ActionController(name: '_BaseControllerBase');

  @override
  void selectTab(int index, bool backButton) {
    final _$actionInfo = _$_BaseControllerBaseActionController.startAction(
        name: '_BaseControllerBase.selectTab');
    try {
      return super.selectTab(index, backButton);
    } finally {
      _$_BaseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentTab: ${currentTab}
    ''';
  }
}
