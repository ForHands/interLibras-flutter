// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$homeIndexPageAtom = Atom(name: '_HomeControllerBase.homeIndexPage');

  @override
  int get homeIndexPage {
    _$homeIndexPageAtom.reportRead();
    return super.homeIndexPage;
  }

  @override
  set homeIndexPage(int value) {
    _$homeIndexPageAtom.reportWrite(value, super.homeIndexPage, () {
      super.homeIndexPage = value;
    });
  }

  final _$handleWillPopAsyncAction =
      AsyncAction('_HomeControllerBase.handleWillPop');

  @override
  Future<bool> handleWillPop() {
    return _$handleWillPopAsyncAction.run(() => super.handleWillPop());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setHomePage(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setHomePage');
    try {
      return super.setHomePage(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void intializeCards() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.intializeCards');
    try {
      return super.intializeCards();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
homeIndexPage: ${homeIndexPage}
    ''';
  }
}
