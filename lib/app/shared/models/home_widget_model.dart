import 'package:flutter/material.dart';

class HomeWidgetModel {
  HomeWidgetModel(
      {@required this.name,
      @required this.action,
      @required this.assetName,
      @required this.maxFontSize,
      @required this.minFontSize,
      @required this.iconPressed});

  String name;
  String assetName;
  Function iconPressed;
  Function action;
  double maxFontSize;
  double minFontSize;
}
