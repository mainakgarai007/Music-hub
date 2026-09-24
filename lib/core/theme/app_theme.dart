import 'package:flutter/material.dart';

/// Music-hub visual theme.
///
/// Light mode: White Smoke surfaces with Sage Green accents.
/// Dark mode: Rich Off-Black surfaces with Sage Green accents.
class AppTheme {
  // ── Text Styles ─────────────────────────────────────────────────────────────
  static const primaryTextStyle = TextStyle(fontFamily: "Fjalla");
  static const secondoryTextStyle = TextStyle(fontFamily: "Gilroy");
  static const secondoryTextStyleMedium =
      TextStyle(fontFamily: "Gilroy", fontWeight: FontWeight.w700);
  static const tertiaryTextStyle = TextStyle(fontFamily: "CodePro");
  static const fontAwesomeRegularFont =
      TextStyle(fontFamily: "FontAwesome-Regular");
  static const fontAwesomeSolidFont =
      TextStyle(fontFamily: "FontAwesome-Solids");

  // ── Music-hub Palette ───────────────────────────────────────────────────────
  static const whiteSmoke = Color(0xFFF5F5F3);
  static const richOffBlack = Color(0xFF10110F);

  static const sage = Color(0xFF9CAF88);
  static const sageLight = Color(0xFFAFC19C);
  static const sageDark = Color(0xFF6F805F);

  static const lightText = Color(0xFF252923);
  static const darkText = Color(0xFFF1F3EE);

  // Backward-compatible names used throughout the existing UI.
  static const themeColor = richOffBlack;
  static const primaryColor1 = darkText;
  static const primaryColor2 = Color(0xFFE3E8DF);
  static const accentColor1 = sageLight;
  static const accentColor1light = sageLight;
  static const accentColor2 = sage;
  static const successColor = sage;

  ThemeData get lightThemeData {
    const scheme = ColorScheme.light(
      primary: sageDark,
      secondary: sage,
      surface: whiteSmoke,
      surfaceContainerHighest: Color(0xFFE8EBE5),
      onPrimary: Colors.white,
      onSecondary: lightText,
      onSurface: lightText,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: whiteSmoke,
      dialogBackgroundColor: whiteSmoke,
      primaryColorDark: sageDark,
      fontFamily: 'Gilroy',
      colorScheme: scheme,
      iconTheme: const IconThemeData(color: sageDark),
      appBarTheme: const AppBarTheme(
        backgroundColor: whiteSmoke,
        foregroundColor: lightText,
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: lightText),
      ),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: sageDark),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: sageDark,
        selectionColor: sage,
        selectionHandleColor: sageDark,
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: WidgetStateProperty.all(sage),
        interactive: true,
        radius: const Radius.circular(10),
        thickness: WidgetStateProperty.all(5),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: const WidgetStatePropertyAll(whiteSmoke),
        trackOutlineColor:
            WidgetStateProperty.all(sageDark),
        trackColor: WidgetStateProperty.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? sage
                : const Color(0xFFD8DDD4)),
      ),
      searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(whiteSmoke),
      ),
      popupMenuTheme: const PopupMenuThemeData(
        color: Color(0xFFE8EBE5),
        textStyle: TextStyle(color: lightText),
      ),
      dropdownMenuTheme: const DropdownMenuThemeData(
        menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFFE8EBE5)),
        ),
        textStyle: TextStyle(color: lightText),
      ),
      menuTheme: const MenuThemeData(
        style: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFFE8EBE5)),
        ),
      ),
      cardTheme: const CardThemeData(
        color: whiteSmoke,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }

  ThemeData get darkThemeData {
    const scheme = ColorScheme.dark(
      primary: sage,
      secondary: sageLight,
      surface: richOffBlack,
      surfaceContainerHighest: Color(0xFF1A1D19),
      onPrimary: richOffBlack,
      onSecondary: richOffBlack,
      onSurface: darkText,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: richOffBlack,
      dialogBackgroundColor: richOffBlack,
      primaryColorDark: sageDark,
      fontFamily: 'Gilroy',
      colorScheme: scheme,
      iconTheme: const IconThemeData(color: darkText),
      appBarTheme: const AppBarTheme(
        backgroundColor: richOffBlack,
        foregroundColor: darkText,
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: darkText),
      ),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: sage),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: sageLight,
        selectionColor: sage,
        selectionHandleColor: sage,
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: WidgetStateProperty.all(sage),
        interactive: true,
        radius: const Radius.circular(10),
        thickness: WidgetStateProperty.all(5),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: const WidgetStatePropertyAll(darkText),
        trackOutlineColor: WidgetStateProperty.all(sage),
        trackColor: WidgetStateProperty.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? sage
                : const Color(0xFF252A23)),
      ),
      searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(richOffBlack),
      ),
      popupMenuTheme: const PopupMenuThemeData(
        color: Color(0xFF1A1D19),
        textStyle: TextStyle(color: darkText),
      ),
      dropdownMenuTheme: const DropdownMenuThemeData(
        menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFF1A1D19)),
        ),
        textStyle: TextStyle(color: darkText),
      ),
      menuTheme: const MenuThemeData(
        style: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFF1A1D19)),
        ),
      ),
      cardTheme: const CardThemeData(
        color: richOffBlack,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }

  // Keep existing callers working.
  ThemeData get defaultThemeData => darkThemeData;
}

/// Backward-compatible alias used by the existing codebase.
// ignore: camel_case_types
typedef Default_Theme = AppTheme;
