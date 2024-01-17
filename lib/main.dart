import 'package:flutter/material.dart';
import 'package:metro_app/color_schemes.g.dart';
import 'package:metro_app/dashboard.dart';
import 'package:metro_app/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


   static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Metro App',
          themeMode: currentMode,
          theme: lightthemeData(context),
          darkTheme: darkThemeData(context),
          
          home: Dashboard(title: 'Dashboard'),
          // home: SplashScreen(),
        );
      });
  }
}
