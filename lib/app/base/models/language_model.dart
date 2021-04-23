import 'package:flutter/material.dart';

enum EnumLanguage { libras, asl }

LanguageModel enumLanguageToObject(EnumLanguage enumLanguageModel) {
  Object libras = LanguageModel(language: "LIBRAS", flag: 'br');
  Object asl = LanguageModel(language: "ASL", flag: 'us');
  switch (enumLanguageModel) {
    case EnumLanguage.libras:
      return libras;
    case EnumLanguage.asl:
      return asl;
    default:
      return libras;
  }
}

class LanguageModel {
  String language;
  String flag;

  LanguageModel({@required this.language, @required this.flag});
}
