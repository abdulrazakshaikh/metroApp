import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:metro/ui/dashboard.dart';
import 'package:metro/ui/home.dart';
import 'package:metro/ui/login/register.dart';
import 'package:metro/ui/splashscreen.dart';

import 'theme/color_schemes.g.dart';

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
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            //supportedLocales: AppLocalizations.supportedLocales,
            supportedLocales: [
              Locale('en'), // English
            ],
            themeMode: currentMode,
            theme: lightthemeData(context),
            darkTheme: darkThemeData(context),

            // home: Dashboard(title: 'Dashboard'),
            // home: SplashScreen(),
            // home: Home(title: 'Homepage')
            home: Register(),
          );
        });
  }
}

