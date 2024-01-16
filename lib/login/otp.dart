
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_app/dashboard.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> with TickerProviderStateMixin {
   @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool checkedValue = true;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: NestedScrollView(
        floatHeaderSlivers: false,
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              elevation: 0,
              toolbarHeight: 180,
              backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
              foregroundColor: Theme.of(context).colorScheme.onTertiary,
              titleTextStyle: GoogleFonts.robotoCondensed(
                textStyle: Theme.of(context).appBarTheme.titleTextStyle,
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.w900
              ),  
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/colorful-train-station-concept_1284-36213.jpg',
                  fit: BoxFit.cover, alignment: Alignment.bottomCenter,
                ),
                title: Container(
                  height: 100, alignment: Alignment.center,
                  child: Text('Welcome to MetroApp', 
                  style: GoogleFonts.robotoCondensed(
                    textStyle: Theme.of(context).appBarTheme.titleTextStyle,
                    // color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w900,
                    fontSize: 30
                  ),  
                  ),
                ),
                titlePadding: EdgeInsets.all(0), // Adjust padding as needed
              ),          
              centerTitle: true,
              actions: [],
          ),

          ];
        },
        body: SingleChildScrollView(
          child: Stack(
          children: [
            Positioned(
              top: 0, left: 0, right: 0,
              child: Container(
                height: 100,
                color: Color(0xFF465a65),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Card(
                    elevation: 5,
                    shadowColor: Theme.of(context).shadowColor.withOpacity(0.35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(width: 1, color: Colors.grey.withOpacity(0.2))
                    ),
                    color: Theme.of(context).colorScheme.background,
                    semanticContainer: true,
                    surfaceTintColor: Theme.of(context).colorScheme.background,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal : 15, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical : 10),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor.withOpacity(0.4))
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Verify you Mobile Number".toUpperCase(),
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.titleMedium,
                                  letterSpacing: 1.25,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ],
                            ),
                          ),
                          Text("A 6 digit otp has sent to +91 9876543210",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.labelMedium,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade700
                            ),
                          ),
                         
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              children: [
                                Container(
                                margin: EdgeInsets.only(bottom: 15),
                                child: TextField(
                                  keyboardType: TextInputType.number,                                  
                                  style: GoogleFonts.roboto(
                                    textStyle: Theme.of(context).textTheme.bodyMedium,
                                    fontWeight: FontWeight.w600, letterSpacing: 1.2,
                                  ),
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7))),
                                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary)),
                                    hintText: 'enter otp'.toLowerCase(),
                                    hintStyle: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium, letterSpacing: 1.8, fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: Column(
                                    children: [
                                      Text("Haven't received OTP yet ?",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          textStyle: Theme.of(context).textTheme.labelMedium,
                                          letterSpacing: 1.25,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: (){}, 
                                        child: Text("Resend OTP",
                                        style: GoogleFonts.roboto(
                                          textStyle: Theme.of(context).textTheme.titleSmall,
                                          color: Theme.of(context).colorScheme.primary,
                                          letterSpacing: 1.25,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w600,
                                        )
                                        ),
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                                          foregroundColor: Theme.of(context).colorScheme.primary
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                

                              ],
                            )
                          ),
                        ],
                      )
                    ),
                  ),
                  Container(
                    padding : EdgeInsets.symmetric(vertical:15, horizontal: 5),
                    child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement<void, void>(
                              context, MaterialPageRoute(
                                builder: (BuildContext context) => Dashboard(title: 'Dashboard')
                              )
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                            alignment: Alignment.center,
                            backgroundColor: Theme.of(context).colorScheme.primary,
                          ),
                          child: Text('Verify'),
                        ),
                      ),
                    ],
                  ),
                  ),


                ],
              ),
            )
          ],
        ),
        )
        
      ),
    );
  }
}
