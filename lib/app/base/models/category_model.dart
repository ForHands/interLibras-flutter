import 'package:flutter/material.dart';
import '../../shared/widgets/item_card_widget.dart';

class CategoryModel {
  CategoryModel(
      {@required this.newCategory,
      @required this.name,
      @required this.items,
      @required this.urlsImages});
  CategoryModel.newCat() {
    name = 'Criar Nova';
    newCategory = true;
    urlsImages = ['intial'];
    items = [];
  }
  String name;
  bool newCategory;
  List<String> urlsImages;
  List<ItemWidget> items;
}
