import 'package:flutter/material.dart';

enum LanguageManager { PORTUGUESE, ENGLISH }

const String PORTUGUESE = "pt";
const String ENGLISH = "en";
const String ASSETS_PATH_LOCALISATIONS = "assets/translations";
const Locale PORTUGUESE_LOCAL = Locale("pt", "BR");
const Locale ENGLISH_LOCAL = Locale("en", "US");

extension LanguageTypeExtension on LanguageManager {
  String getValue() {
    switch (this) {
      case LanguageManager.PORTUGUESE:
        return PORTUGUESE;
      case LanguageManager.ENGLISH:
        return ENGLISH;
    }
  }
}