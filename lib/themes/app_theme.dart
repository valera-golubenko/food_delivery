import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'extensions/custom_designs.dart';

part 'dark/dark_theme_data.dart';
part 'light/light_theme_data.dart';

enum ThemeType {
  light,
  dark;

  static final themeDataMap = {
    ThemeType.dark: _darkThemeData,
    ThemeType.light: _lightThemeData,
  };

  static final labelToEnumMap = {
    ThemeType.dark.name: ThemeType.dark,
    ThemeType.light.name: ThemeType.light,
  };

  static ThemeType fromString(String text) {
    return labelToEnumMap[text] ?? ThemeType.light;
  }

  ThemeData themeData({String? fontFamily}) {
    return themeDataMap[this]!(fontFamily: fontFamily);
  }
}

extension BuildContextExt on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  CustomDesigns get designs => Theme.of(this).extension()!;
}
