import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro/theme/color_constant.dart';



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
  shadow: arsshadowlight,
  outline: arsoutlinelight,
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
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
  shadow: arsshadowdark,
  outline: arsoutlinedark,
);

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



// ------APPBAR--------//
AppBarTheme lightAppbarTheme = AppBarTheme(
  foregroundColor: arstextColorLight,
  backgroundColor: arsappbarbackgroundLight,
  surfaceTintColor: arsappbarbackgroundLight,
  elevation: 4,
  
  shadowColor: arsshadowlight,
  titleTextStyle: GoogleFonts.robotoCondensed(
    textStyle: const TextStyle(fontSize: 16, letterSpacing: 1.2, color: arstextColorDark, fontWeight: FontWeight.w600)
  ),
  toolbarTextStyle: GoogleFonts.robotoCondensed(
    textStyle: const TextStyle(fontSize: 16, letterSpacing: 1.2, color: arstextColorDark, fontWeight: FontWeight.w600)
  ),
  actionsIconTheme: IconThemeData(color: arstextColorDark, opacity: 0.8,),
  iconTheme: IconThemeData(color: arstextColorDark, opacity: 0.8),
);
AppBarTheme darkAppbarTheme = AppBarTheme(
  foregroundColor: arstextColorDark,
  backgroundColor: arsappbarbackgroundDark,
  surfaceTintColor: arsappbarbackgroundDark,
  elevation: 4,
  shadowColor: arsshadowdark,
  titleTextStyle: GoogleFonts.robotoCondensed(
    textStyle: const TextStyle(fontSize: 16, color: arstextColorDark, letterSpacing: 1.2, fontWeight: FontWeight.w600)
  ),
  toolbarTextStyle: GoogleFonts.robotoCondensed(
    textStyle: const TextStyle(fontSize: 16, color: arstextColorDark, letterSpacing: 1.2, fontWeight: FontWeight.w600)
  ),
  actionsIconTheme: IconThemeData(color: arstextColorDark, opacity: 0.8,),
  iconTheme: IconThemeData(color: arstextColorDark, opacity: 0.8),
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

// ------CARD--------//
CardTheme lightCardTheme = CardTheme(
  color: arscardbackgroundLight,
  surfaceTintColor: arscardbackgroundLight,
  shadowColor: arsshadowlight.withOpacity(0.85),
);
CardTheme darkCardTheme = CardTheme(
  color: arscardbackgroundDark,
  surfaceTintColor: arscardbackgroundLight,
  shadowColor: arsshadowdark.withOpacity(0.85),
);


// ------DIVIDER--------//
DividerThemeData lightDividerTheme = DividerThemeData(
  space: 0,
  color: Colors.grey.shade300,
);
DividerThemeData darkDividerTheme = DividerThemeData(
  space: 0,
  color: Colors.grey.shade800,
);


// ------DIALOG--------//
DialogTheme lightDialogTheme = DialogTheme(
  backgroundColor: arsdialogbackgroundLight,
  titleTextStyle: GoogleFonts.roboto(
    textStyle: const TextStyle(fontSize: 18, letterSpacing: 1.2, color: arstextColorLight, fontWeight: FontWeight.w600)
  ), 
  contentTextStyle: GoogleFonts.roboto(
    textStyle: const TextStyle(fontSize: 13, letterSpacing: 1, color: arstextColorLight, fontWeight: FontWeight.w400)
  ), 
  actionsPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  
);
DialogTheme darkDialogTheme = DialogTheme(
  backgroundColor: arsdialogbackgroundDark,
  titleTextStyle: GoogleFonts.roboto(
    textStyle: const TextStyle(fontSize: 18, letterSpacing: 1.2, color: arstextColorDark, fontWeight: FontWeight.w600)
  ),
  contentTextStyle: GoogleFonts.roboto(
    textStyle: const TextStyle(fontSize: 13, letterSpacing: 1, color: arstextColorDark, fontWeight: FontWeight.w400)
  ), 
  actionsPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
);



// ------RADIO--------//
RadioThemeData lightRadioTheme = RadioThemeData();
RadioThemeData darkRadioTheme = RadioThemeData();

// ------CHECKBOX--------//
CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  )
);
CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  )
);



// ------TEXTFIELD - INPUT DECORATION--------//
InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1)),
  focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: arsprimary)),
  hintStyle: GoogleFonts.roboto(
    color: arstextColorLight.withOpacity(0.6), fontSize: 12, letterSpacing: 1.8, fontWeight: FontWeight.w300
  ),
);
InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1)),
  focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: arsprimary)),
  hintStyle: GoogleFonts.roboto(
    color: arstextColorDark.withOpacity(0.6), fontSize: 12, letterSpacing: 1.8, fontWeight: FontWeight.w300
  ),
); 

// ------TEXTFIELD - DATEPICKER--------//
DatePickerThemeData lightPickerTheme = DatePickerThemeData(
  backgroundColor: arsdialogbackgroundLight,
  surfaceTintColor: arsdialogbackgroundLight,
  elevation: 4,
  headerBackgroundColor: arssecondary,
  headerForegroundColor: arsonsecondary,
);
DatePickerThemeData darkPickerTheme = DatePickerThemeData(
  backgroundColor: arsdialogbackgroundDark,
  surfaceTintColor: arsdialogbackgroundDark,
  elevation: 4,
  headerBackgroundColor: arssecondary,
  headerForegroundColor: arsonsecondary,
); 


// ------NAVIGATION BAR--------//
NavigationBarThemeData lightNavigationBarTheme = NavigationBarThemeData(
  elevation: 4,
  height: 74,
  shadowColor: arsshadowlight,
  backgroundColor: arsappbarbackgroundLight,
  surfaceTintColor: arsappbarbackgroundLight,
  indicatorColor: arsprimary.withOpacity(0.2),
  // indicatorShape: RoundedRectangleBorder(
  //   borderRadius: BorderRadius.circular(10)
  // ),
  iconTheme: MaterialStateProperty.resolveWith((states){
    if (states.contains(MaterialState.selected)) {
      return IconThemeData(
        color: arsprimary,
      );
    }
  }),
  labelTextStyle: MaterialStateProperty.resolveWith((states){
    if (states.contains(MaterialState.selected)) {
      return GoogleFonts.robotoCondensed(
        textStyle: const TextStyle(fontSize: 13, letterSpacing: 1.2, color: arsprimary, fontWeight: FontWeight.w600)
      );  
    }
    return GoogleFonts.robotoCondensed(
      textStyle: const TextStyle(fontSize: 13, letterSpacing: 1.2, fontWeight: FontWeight.w500)
    );
  }),
);
NavigationBarThemeData darkNavigationBarTheme = NavigationBarThemeData(
  elevation: 4,
  height: 74,
  shadowColor: arsshadowdark,
  backgroundColor: arsappbarbackgroundDark,
  surfaceTintColor: arsappbarbackgroundDark,
  indicatorColor: arsprimary.withOpacity(0.2),
  // indicatorShape: RoundedRectangleBorder(
  //   borderRadius: BorderRadius.circular(10)
  // ),
  iconTheme: MaterialStateProperty.resolveWith((states){
    if (states.contains(MaterialState.selected)) {
      return IconThemeData(
        color: arsprimary,
      );
    }
  }),
  labelTextStyle: MaterialStateProperty.resolveWith((states){
    if (states.contains(MaterialState.selected)) {
      return GoogleFonts.robotoCondensed(
        textStyle: const TextStyle(fontSize: 13, letterSpacing: 1.2, color: arsprimary, fontWeight: FontWeight.w600)
      );  
    }
    return GoogleFonts.robotoCondensed(
      textStyle: const TextStyle(fontSize: 13, letterSpacing: 1.2, fontWeight: FontWeight.w500)
    );
  }),
);

// ------TOGGLE BUTTON--------//
ToggleButtonsThemeData lightToggleButtonsTheme = ToggleButtonsThemeData(
  borderRadius: BorderRadius.all(Radius.circular(4)),
  borderWidth: 1,
  borderColor: arsoutlinelight,
  selectedBorderColor: arsprimary,
  selectedColor: arsonprimary,
  color: arssecondary,
  fillColor: arsprimary,
  textStyle: GoogleFonts.roboto(color: arstextColorLight, fontSize: 14, letterSpacing: 1, fontWeight: FontWeight.w500),
  
);
ToggleButtonsThemeData darkToggleButtonsTheme = ToggleButtonsThemeData(
  borderRadius: BorderRadius.all(Radius.circular(4)),
  borderWidth: 2,
  borderColor: arsoutlinelight,
  selectedBorderColor: arsprimary,
  selectedColor: arsonprimary,
  color: arssecondary,
  fillColor: arsprimary,
  textStyle: GoogleFonts.roboto(color: arstextColorDark, fontSize: 14, letterSpacing: 1, fontWeight: FontWeight.w500),
);

// ------THEMEDATA--------//
ThemeData lightthemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: arsprimary,
    colorScheme: lightColorScheme,
    appBarTheme: lightAppbarTheme,
    cardTheme: lightCardTheme,
    dialogTheme: lightDialogTheme,
    iconTheme: lightIconTheme,    
    buttonTheme: lightButtonTheme,
    elevatedButtonTheme: lightElevatedButtonTheme,
    outlinedButtonTheme: lightOutlinedButtonTheme,
    textButtonTheme: lightTextButtonTheme,
    textTheme : lightTextTheme,
    inputDecorationTheme: lightInputDecorationTheme,
    radioTheme: lightRadioTheme,
    checkboxTheme: lightCheckboxTheme,
    navigationBarTheme: lightNavigationBarTheme,
    dividerTheme: lightDividerTheme,
    datePickerTheme: lightPickerTheme,
    toggleButtonsTheme: lightToggleButtonsTheme,
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: arsprimary,
    colorScheme: darkColorScheme,
    appBarTheme: darkAppbarTheme,
    cardTheme: darkCardTheme,
    dialogTheme: darkDialogTheme,
    iconTheme: darkIconTheme,
    buttonTheme: darkButtonTheme,
    elevatedButtonTheme: darkElevatedButtonTheme,
    outlinedButtonTheme: darkOutlinedButtonTheme,
    textButtonTheme: darkTextButtonTheme,
    textTheme : darkTextTheme,
    inputDecorationTheme: darkInputDecorationTheme,
    radioTheme: darkRadioTheme,
    checkboxTheme: darkCheckboxTheme,
    navigationBarTheme: darkNavigationBarTheme,
    dividerTheme: darkDividerTheme,
    datePickerTheme: darkPickerTheme,
    toggleButtonsTheme: darkToggleButtonsTheme,
  );
}
