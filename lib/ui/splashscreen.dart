import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro/ui/login/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      reverseDuration: const Duration(seconds: 5),
      vsync: this,
      // value: 0.1,
      lowerBound: 0.3,
      upperBound: 1.0,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
      // reverseCurve: Curves.bounceOut
    );

    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) =>
                  // Home(title: 'Dashboard')
                  Login()));
    });
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 160,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  AppLocalizations.of(context)!.welcome_to_metro,
                  style: GoogleFonts.robotoCondensed(
                      textStyle: Theme.of(context).textTheme.titleSmall,
                      // color: Theme.of(context).colorScheme.onPrimary,
                      letterSpacing: 1.25,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
