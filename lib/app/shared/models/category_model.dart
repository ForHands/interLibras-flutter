import 'package:flutter/material.dart';

class CategoryModel {
  CategoryModel(
      {@required this.newCategory,
      @required this.name,
      @required this.urlsImages});
  CategoryModel.newCat() {
    name = 'Criar Nova';
    newCategory = true;
    urlsImages = ['intial'];
  }
  String name;
  bool newCategory;
  List<String> urlsImages;
}
