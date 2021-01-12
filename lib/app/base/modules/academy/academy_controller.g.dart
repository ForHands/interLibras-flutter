// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AcademyController = BindInject(
  (i) => AcademyController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AcademyController on _AcademyControllerBase, Store {
  final _$valueAtom = Atom(name: '_AcademyControllerBase.value');

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

  final _$_AcademyControllerBaseActionController =
      ActionController(name: '_AcademyControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_AcademyControllerBaseActionController.startAction(
        name: '_AcademyControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_AcademyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
