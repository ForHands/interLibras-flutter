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
  final _$selectedCategoryAtom =
      Atom(name: '_CategoriasControllerBase.selectedCategory');

  @override
  CategoryModel get selectedCategory {
    _$selectedCategoryAtom.reportRead();
    return super.selectedCategory;
  }

  @override
  set selectedCategory(CategoryModel value) {
    _$selectedCategoryAtom.reportWrite(value, super.selectedCategory, () {
      super.selectedCategory = value;
    });
  }

  final _$categoriesIndexPageAtom =
      Atom(name: '_CategoriasControllerBase.categoriesIndexPage');

  @override
  int get categoriesIndexPage {
    _$categoriesIndexPageAtom.reportRead();
    return super.categoriesIndexPage;
  }

  @override
  set categoriesIndexPage(int value) {
    _$categoriesIndexPageAtom.reportWrite(value, super.categoriesIndexPage, () {
      super.categoriesIndexPage = value;
    });
  }

  final _$_CategoriasControllerBaseActionController =
      ActionController(name: '_CategoriasControllerBase');

  @override
  void selectCategorie(CategoryModel categorySelected) {
    final _$actionInfo = _$_CategoriasControllerBaseActionController
        .startAction(name: '_CategoriasControllerBase.selectCategorie');
    try {
      return super.selectCategorie(categorySelected);
    } finally {
      _$_CategoriasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initializeCategories() {
    final _$actionInfo = _$_CategoriasControllerBaseActionController
        .startAction(name: '_CategoriasControllerBase.initializeCategories');
    try {
      return super.initializeCategories();
    } finally {
      _$_CategoriasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedCategory: ${selectedCategory},
categoriesIndexPage: ${categoriesIndexPage}
    ''';
  }
}
