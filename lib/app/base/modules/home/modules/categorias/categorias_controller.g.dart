// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorias_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CategoriasController = BindInject(
  (i) => CategoriasController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoriasController on _CategoriasControllerBase, Store {
  final _$valueAtom = Atom(name: '_CategoriasControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_CategoriasControllerBaseActionController =
      ActionController(name: '_CategoriasControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CategoriasControllerBaseActionController
        .startAction(name: '_CategoriasControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CategoriasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
