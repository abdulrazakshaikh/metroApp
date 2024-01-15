import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_app/constant.dart';

// ------TEXT THEME--------//
TextTheme lightTextTheme = TextTheme(
  displayLarge: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 57, fontWeight: FontWeight.w300,)
  ),
  displayMedium: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 45, fontWeight: FontWeight.w300,)
  ),
  displaySmall: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 36, fontWeight: FontWeight.w300,)
  ),
  headlineLarge: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorLight, fontSize: 32, fontWeight: FontWeight.w300,)
  ),
  headlineMedium: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 28, fontWeight: FontWeight.w300,)
  ),
  headlineSmall: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 24, fontWeight: FontWeight.w300,)
  ),
  titleLarge: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 22, fontWeight: FontWeight.w500, )
  ),
  titleMedium: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 16, letterSpacing: 0.15, fontWeight: FontWeight.w500,)
  ),
  titleSmall: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 14, letterSpacing: 0.1, fontWeight: FontWeight.w500,)
  ),
  labelLarge: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 14, letterSpacing: 0.1, fontWeight: FontWeight.w500,)
  ),
  labelMedium: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 12, letterSpacing: 0.5, fontWeight: FontWeight.w500,)
  ),
  labelSmall: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 11, letterSpacing: 0.5, fontWeight: FontWeight.w500,)
  ),
  bodyLarge: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 16, letterSpacing: 0.15, fontWeight: FontWeight.w500,)
  ),
  bodyMedium: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 14, letterSpacing: 0.25, fontWeight: FontWeight.w500,)
  ),
  bodySmall: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorLight, fontSize: 12, letterSpacing: 0.4, fontWeight: FontWeight.w500,)
  ),
);


TextTheme darkTextTheme =  TextTheme(
  displayLarge: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 57, fontWeight: FontWeight.w300,)
  ),
  displayMedium: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 45, fontWeight: FontWeight.w300,)
  ),
  displaySmall: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 36, fontWeight: FontWeight.w300,)
  ),
  headlineLarge: GoogleFonts.roboto(
      textStyle: const TextStyle(color: arstextColorDark, fontSize: 32, fontWeight: FontWeight.w300,)
  ),
  headlineMedium: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 28, fontWeight: FontWeight.w300,)
  ),
  headlineSmall: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 24, fontWeight: FontWeight.w300,)
  ),
  titleLarge: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 22, fontWeight: FontWeight.w500, )
  ),
  titleMedium: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 16, letterSpacing: 0.15, fontWeight: FontWeight.w500,)
  ),
  titleSmall: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 14, letterSpacing: 0.1, fontWeight: FontWeight.w500,)
  ),
  labelLarge: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 14, letterSpacing: 0.1, fontWeight: FontWeight.w500,)
  ),
  labelMedium: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 12, letterSpacing: 0.5, fontWeight: FontWeight.w500,)
  ),
  labelSmall: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 11, letterSpacing: 0.5, fontWeight: FontWeight.w500,)
  ),
  bodyLarge: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 16, letterSpacing: 0.15, fontWeight: FontWeight.w500,)
  ),
  bodyMedium: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 14, letterSpacing: 0.25, fontWeight: FontWeight.w500,)
  ),
  bodySmall: GoogleFonts.roboto(
    textStyle: const TextStyle(color: arstextColorDark, fontSize: 12, letterSpacing: 0.4, fontWeight: FontWeight.w500,)
  ),
);



// ------COLORSCHEME--------//
const lightColorScheme = ColorScheme(
  brightness: Brightness.light,

  primary: arsprimary,
  onPrimary: arsonprimary,
  primaryContainer: arsprimarycontainer,
  onPrimaryContainer: arsprimary,

  secondary: arssecondary,
  onSecondary: arsonsecondary,
  secondaryContainer: arssecondarycontainer,
  onSecondaryContainer: arssecondary,

  tertiary: arstertiary,
  onTertiary: arsontertiary,
  tertiaryContainer: arstertiarycontainer,
  onTertiaryContainer: arstertiary,

  surface: arssurfaceLight,
  onSurface: Color(0xFF1C1B1F),
  surfaceVariant: Color(0xFFE7E0EC),
  onSurfaceVariant: Color(0xFF49454F),
  background: arsbackgroundLight,
  onBackground: Color(0xFF1C1B1F),
  error: arserror,
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFF9DEDC),
  onErrorContainer: Color(0xFF410E0B),
  shadow: arsshadow,
  outline: arsoutline,
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,

  primary: arsprimary,
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: arsprimarycontainer,
  onPrimaryContainer: arsprimary,

  secondary: arssecondary,
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: arssecondarycontainer,
  onSecondaryContainer: arssecondary,

  tertiary: arstertiary,
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: arstertiarycontainer,
  onTertiaryContainer: arstertiary,

  surface: arssurfaceDark,
  onSurface: Color(0xFFE6E1E5),
  surfaceVariant: Color(0xFF49454F),
  onSurfaceVariant: Color(0xFFCAC4D0),
  background: arsbackgroundDark,
  onBackground: Color(0xFFE6E1E5),
  error: Color(0xFFF2B8B5),
  onError: Color(0xFF601410),
  errorContainer: Color(0xFF8C1D18),
  onErrorContainer: Color(0xFFF2B8B5),
  shadow: arsshadow,
  outline: Color(0xFF938F99),
);

// ------APPBAR--------//
AppBarTheme lightAppbarTheme = AppBarTheme(
  backgroundColor: arsappbarbackgroundLight,
  surfaceTintColor: arsappbarbackgroundLight,
  elevation: 4,
  shadowColor: arsshadow,
  titleTextStyle: GoogleFonts.robotoCondensed(textStyle: const TextStyle(fontSize: 16, letterSpacing: 1.2, fontWeight: FontWeight.w600)),
);
AppBarTheme darkAppbarTheme = AppBarTheme(
  backgroundColor: arsappbarbackgroundDark,
  surfaceTintColor: arsappbarbackgroundDark,
  elevation: 4,
  shadowColor: arsshadow,
  titleTextStyle: GoogleFonts.robotoCondensed(
      textStyle: const TextStyle(fontSize: 16, color: Colors.white, letterSpacing: 1.2,fontWeight: FontWeight.w600)),
);

// ------ICON THEME--------//
IconThemeData lightIconTheme = IconThemeData(
  size: 20,
  color: const Color(0xFF31313d),
);

IconThemeData darkIconTheme = IconThemeData(
  size: 20,
  color: const Color(0xFFffffff),
);

// ------BUTTON THEME THEME--------//
ButtonThemeData lightButtonTheme = ButtonThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0)
  ),  
);
ButtonThemeData darkButtonTheme = ButtonThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0)
  ),  
);

// ------ELEVATED BUTTON THEME--------//
ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: arsprimary,
    foregroundColor: arsonprimary,
    minimumSize: Size(64, 40),
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6)
    ),
    textStyle: GoogleFonts.roboto(
      textStyle: TextStyle(fontSize: 15, letterSpacing: 1.2,fontWeight: FontWeight.w500)
    ),
  ),
);

ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: arsprimary,
    foregroundColor: arsonprimary,
    minimumSize: Size(64, 40),
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6)
    ),
    textStyle: GoogleFonts.roboto(
      textStyle: TextStyle(fontSize: 15, letterSpacing: 1.2,fontWeight: FontWeight.w500)
    ),
  ),
);


// ------OUTLINED BUTTON THEME--------//
OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    foregroundColor: arsprimary,
    minimumSize: Size(64, 40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6)
    ),
    side: BorderSide(width: 1, color: arsprimary),
    textStyle: GoogleFonts.roboto(
      textStyle: TextStyle(fontSize: 15, letterSpacing: 1.2,fontWeight: FontWeight.w500)
    ),
  ),
);

OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    foregroundColor: arsprimary,
    minimumSize: Size(64, 40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6)
    ),
    side: BorderSide(width: 1, color: arsprimary),
    textStyle: GoogleFonts.roboto(
      textStyle: TextStyle(fontSize: 15, letterSpacing: 1.2,fontWeight: FontWeight.w500)
    ),
  ),
);


// ------TEXT BUTTON THEME--------//
TextButtonThemeData lightTextButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: arsprimary,
    minimumSize: Size(64, 40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6)
    ),
    textStyle: GoogleFonts.roboto(
      textStyle: TextStyle(fontSize: 15, letterSpacing: 1.2,fontWeight: FontWeight.w500)
    ),
  ),
);

TextButtonThemeData darkTextButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: arsprimary,
    minimumSize: Size(64, 40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6)
    ),
    textStyle: GoogleFonts.roboto(
      textStyle: TextStyle(fontSize: 15, letterSpacing: 1.2,fontWeight: FontWeight.w500)
    ),
  ),
);

InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1)),
  focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: arsprimary)),
);

InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1)),
  focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: arsprimary)),
);

// ------THEMEDATA--------//
ThemeData lightthemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: arsprimary,
    colorScheme: lightColorScheme,
    appBarTheme: lightAppbarTheme,
    iconTheme: lightIconTheme,    
    buttonTheme: lightButtonTheme,
    elevatedButtonTheme: lightElevatedButtonTheme,
    outlinedButtonTheme: lightOutlinedButtonTheme,
    textButtonTheme: lightTextButtonTheme,
    textTheme : lightTextTheme,
    inputDecorationTheme: lightInputDecorationTheme,
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: arsprimary,
    colorScheme: darkColorScheme,
    appBarTheme: darkAppbarTheme,
    iconTheme: darkIconTheme,
    buttonTheme: darkButtonTheme,
    elevatedButtonTheme: darkElevatedButtonTheme,
    outlinedButtonTheme: darkOutlinedButtonTheme,
    textButtonTheme: darkTextButtonTheme,
    textTheme : darkTextTheme,
    inputDecorationTheme: darkInputDecorationTheme,
  );
}
