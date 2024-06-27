part of '../app_theme.dart';

ThemeData _lightThemeData({String? fontFamily}) {
  final design = CustomDesigns.light();
  final colorScheme = ColorScheme.light(
    brightness: Brightness.light,
    surface: design.greyScale.tone0,
    primary: design.prDarkBlue.tone100,
    secondary: design.prSkyBlue.tone100,
  );

  return ThemeData(
    useMaterial3: true,
    primaryColor: design.greyScale.tone0,
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: design.prSkyBlue.tone900,
        size: 18,
      ),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 16,
        color: design.prSkyBlue.tone900,
      ),
      backgroundColor: design.prDarkBlue.tone100,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 4,
        foregroundColor: colorScheme.primary,
        backgroundColor: colorScheme.surface,
        side: BorderSide(
          color: colorScheme.surface,
          width: 0,
        ),
        shadowColor: colorScheme.surface,
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: colorScheme.surface,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 96,
        letterSpacing: -1.5,
        color: design.colorText,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 60,
        letterSpacing: -0.5,
        color: design.colorText,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 48,
        letterSpacing: 0,
        color: design.colorText,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 28,
        color: design.colorText,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 24,
        color: design.colorText,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 18,
        color: design.colorText,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 16,
        color: design.colorText,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 14,
        color: design.colorText,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 16,
        letterSpacing: 0.5,
        color: design.colorText,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 14,
        letterSpacing: 0.25,
        color: design.colorText,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 12,
        letterSpacing: 0.4,
        color: design.colorText,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 14,
        letterSpacing: 1.25,
        color: design.colorText,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 12,
        letterSpacing: 1.5,
        color: design.colorText,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily,
        fontSize: 10,
        letterSpacing: 1.5,
        color: design.colorText,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: design.prSkyBlue.tone100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(200),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelPadding: const EdgeInsets.symmetric(vertical: 8),
      labelStyle: TextStyle(
        color: design.greyScale.tone300,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      unselectedLabelStyle: TextStyle(
        color: design.greyScale.tone400,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    ),
    scaffoldBackgroundColor: design.greyScale.tone0,
    dividerColor: design.greyScale.tone100,
    canvasColor: design.greyScale.tone0,
    colorScheme: colorScheme.copyWith(
      surface: design.greyScale.tone0,
    ),
    extensions: [design],
  );
}
