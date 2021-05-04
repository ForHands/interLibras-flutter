// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minhas_categorias_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MinhasCategoriasController on _MinhasCategoriasControllerBase, Store {
  final _$selectedCategoryAtom =
      Atom(name: '_MinhasCategoriasControllerBase.selectedCategory');

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
      Atom(name: '_MinhasCategoriasControllerBase.categoriesIndexPage');

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

  final _$_MinhasCategoriasControllerBaseActionController =
      ActionController(name: '_MinhasCategoriasControllerBase');

  @override
  void selectCategorie(CategoryModel categorySelected) {
    final _$actionInfo = _$_MinhasCategoriasControllerBaseActionController
        .startAction(name: '_MinhasCategoriasControllerBase.selectCategorie');
    try {
      return super.selectCategorie(categorySelected);
    } finally {
      _$_MinhasCategoriasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initializeCategories() {
    final _$actionInfo =
        _$_MinhasCategoriasControllerBaseActionController.startAction(
            name: '_MinhasCategoriasControllerBase.initializeCategories');
    try {
      return super.initializeCategories();
    } finally {
      _$_MinhasCategoriasControllerBaseActionController.endAction(_$actionInfo);
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
