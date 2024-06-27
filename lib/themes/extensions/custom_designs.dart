import 'package:flutter/material.dart';

@immutable
class CustomDesigns extends ThemeExtension<CustomDesigns> {
  final Color colorRed;
  final Color colorGreen;
  final Color colorPurple;
  final Color colorOrange;
  final Color colorEmerald;
  final Color colorText;
  final Color colorTextTitle;
  final Color colorLogo;
  final Color colorIcon;
  final Color colorEntity;
  final Color colorEntityButtonActive;
  final Color colorEntityButtonInactive;
  final Color colorExpense;
  final Color colorIncome;
  final ColorsSet greyScale;
  final ColorsSet prDarkBlue;
  final ColorsSet prSkyBlue;
  final ColorsSet prOrange;
  final LinearGradient gradient;
  final LinearGradient gradientOpacity35;
  final LinearGradient gradientShadow;
  final LinearGradient gradientBackgroundHome;
  final List<BoxShadow> boxShadow;
  final List<BoxShadow> boxShadowReportCard;
  final List<BoxShadow> textShadow;

  const CustomDesigns._({
    required this.colorRed,
    required this.colorGreen,
    required this.colorPurple,
    required this.colorOrange,
    required this.colorEmerald,
    required this.colorText,
    required this.colorTextTitle,
    required this.colorLogo,
    required this.colorIcon,
    required this.colorEntity,
    required this.colorEntityButtonActive,
    required this.colorEntityButtonInactive,
    required this.colorExpense,
    required this.colorIncome,
    required this.greyScale,
    required this.prDarkBlue,
    required this.prSkyBlue,
    required this.prOrange,
    required this.gradient,
    required this.gradientOpacity35,
    required this.gradientShadow,
    required this.gradientBackgroundHome,
    required this.boxShadow,
    required this.boxShadowReportCard,
    required this.textShadow,
  });

  factory CustomDesigns.dark() {
    return CustomDesigns.light();
  }
  factory CustomDesigns.light() {
    return const CustomDesigns._(
      colorRed: Color(0xFFF1635D),
      colorGreen: Color(0xFF41D09C),
      colorPurple: Color(0xFF5A5ED3),
      colorOrange: Color(0xFFF27D1E),
      colorEmerald: Color(0xFF21B9C2),
      colorText: Color(0xFF1A2134),
      colorTextTitle: Color(0xFF2B3453),
      colorLogo: Color(0xFFBDFF00),
      colorIcon: Color(0xFF454555),
      colorEntity: Color(0xFF207C66),
      colorEntityButtonActive: Color(0xFF1F7863),
      colorEntityButtonInactive: Color(0xFFA5C9C0),
      colorExpense: Color(0xFFB65B57),
      colorIncome: Color(0xFF338AF3),
      greyScale: ColorsSet(
        tone0: Color(0xFFFFFFFF),
        tone100: Color(0xFFEFF2F8),
        tone200: Color(0xFF516E95),
        tone300: Color(0xFF070A2C),
        tone400: Color(0xFF687C97),
      ),
      prDarkBlue: ColorsSet(
        tone100: Color(0xFF003696),
        tone500: Color(0xFF335EAB),
        tone600: Color(0xFF6686C0),
        tone700: Color(0xFF809BCB),
        tone800: Color(0xFFB3C3E0),
        tone900: Color(0xFFE6EBF5),
        tone1000: Color(0xFFF9F9F9),
      ),
      prSkyBlue: ColorsSet(
        tone100: Color(0xFF12AFDF),
        tone500: Color(0xFF41BFE5),
        tone600: Color(0xFF71CFEC),
        tone700: Color(0xFFA0DFF2),
        tone800: Color(0xFFB8E7F5),
        tone900: Color(0xFFE7F7FC),
      ),
      prOrange: ColorsSet(
        tone100: Color(0xFFFEA328),
        tone500: Color(0xFFFEB553),
        tone600: Color(0xFFFEC87E),
        tone700: Color(0xFFFFD194),
        tone800: Color(0xFFFFE3BF),
        tone900: Color(0xFFFFF6EA),
      ),
      gradient: LinearGradient(
        colors: [
          Color(0xFF6887F7),
          Color(0xFF50AFF2),
          Color(0xFF5ECECA),
        ],
        begin: Alignment(1.0, -0.9),
        end: Alignment(-1.0, 0.9),
        stops: [
          -0.07,
          0.4499,
          1.0667,
        ],
      ),
      gradientOpacity35: LinearGradient(
        colors: [
          Color(0x596887F7),
          Color(0x5950AFF2),
          Color(0x595ECECA),
        ],
        begin: Alignment(1.0, -0.9),
        end: Alignment(-1.0, 0.9),
        stops: [
          -0.07,
          0.4499,
          1.0667,
        ],
      ),
      gradientShadow: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0x00FFFFFF),
          Color(0x7F687C97),
        ],
        stops: [
          0.0,
          1.0,
        ],
      ),
      gradientBackgroundHome: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF003696),
          Color(0xFF12AFDF),
        ],
        stops: [
          0.0,
          1.0,
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: Color(0xFF687C97),
          blurRadius: 26,
          offset: Offset(0, 12),
        ),
      ],
      boxShadowReportCard: [
        BoxShadow(
          color: Color(0x1B070A2C),
          blurRadius: 25,
          offset: Offset(0, 11),
        ),
      ],
      textShadow: [
        BoxShadow(
          color: Color(0xFF000000),
          blurRadius: 20,
          offset: Offset(1, 1),
        ),
        BoxShadow(
          color: Color(0xFF000000),
          blurRadius: 20,
          offset: Offset(1, 1),
        ),
      ],
    );
  }

  @override
  ThemeExtension<CustomDesigns> copyWith({
    Color? colorRed,
    Color? colorGreen,
    Color? colorPurple,
    Color? colorOrange,
    Color? colorEmerald,
    Color? colorText,
    Color? colorTextTitle,
    Color? colorLogo,
    Color? colorIcon,
    Color? colorEntity,
    Color? colorEntityButtonActive,
    Color? colorEntityButtonInactive,
    Color? colorExpense,
    Color? colorIncome,
    ColorsSet? greyScale,
    ColorsSet? prDarkBlue,
    ColorsSet? prSkyBlue,
    ColorsSet? prOrange,
    LinearGradient? gradient,
    LinearGradient? gradientOpacity35,
    LinearGradient? gradientShadow,
    LinearGradient? gradientBackgroundHome,
    List<BoxShadow>? boxShadow,
    List<BoxShadow>? boxShadowReportCard,
    List<BoxShadow>? textShadow,
  }) {
    return CustomDesigns._(
      colorRed: colorRed ?? this.colorRed,
      colorGreen: colorGreen ?? this.colorGreen,
      colorPurple: colorPurple ?? this.colorPurple,
      colorOrange: colorOrange ?? this.colorOrange,
      colorEmerald: colorEmerald ?? this.colorEmerald,
      colorText: colorText ?? this.colorText,
      colorTextTitle: colorTextTitle ?? this.colorTextTitle,
      colorLogo: colorLogo ?? this.colorLogo,
      colorIcon: colorIcon ?? this.colorIcon,
      colorEntity: colorEntity ?? this.colorEntity,
      colorEntityButtonActive:
          colorEntityButtonActive ?? this.colorEntityButtonActive,
      colorEntityButtonInactive:
          colorEntityButtonInactive ?? this.colorEntityButtonInactive,
      colorExpense: colorExpense ?? this.colorExpense,
      colorIncome: colorIncome ?? this.colorIncome,
      greyScale: greyScale ?? this.greyScale,
      prDarkBlue: prDarkBlue ?? this.prDarkBlue,
      prSkyBlue: prSkyBlue ?? this.prSkyBlue,
      prOrange: prOrange ?? this.prOrange,
      gradient: gradient ?? this.gradient,
      gradientOpacity35: gradientOpacity35 ?? this.gradientOpacity35,
      gradientShadow: gradientShadow ?? this.gradientShadow,
      gradientBackgroundHome:
          gradientBackgroundHome ?? this.gradientBackgroundHome,
      boxShadow: boxShadow ?? this.boxShadow,
      boxShadowReportCard: boxShadowReportCard ?? this.boxShadowReportCard,
      textShadow: textShadow ?? this.textShadow,
    );
  }

  @override
  ThemeExtension<CustomDesigns> lerp(
    ThemeExtension<CustomDesigns>? other,
    double t,
  ) {
    return this;
  }
}

class ColorsSet {
  final Color tone0;
  final Color tone100;
  final Color tone200;
  final Color tone300;
  final Color tone400;
  final Color tone500;
  final Color tone600;
  final Color tone700;
  final Color tone800;
  final Color tone900;
  final Color tone1000;

  const ColorsSet({
    this.tone0 = Colors.transparent,
    this.tone100 = Colors.transparent,
    this.tone200 = Colors.transparent,
    this.tone300 = Colors.transparent,
    this.tone400 = Colors.transparent,
    this.tone500 = Colors.transparent,
    this.tone600 = Colors.transparent,
    this.tone700 = Colors.transparent,
    this.tone800 = Colors.transparent,
    this.tone900 = Colors.transparent,
    this.tone1000 = Colors.transparent,
  });
}
