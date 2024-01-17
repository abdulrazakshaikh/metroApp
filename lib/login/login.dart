
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_app/login/otp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
 

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool checkedValue = false;

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
              toolbarHeight: 120,
              backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              foregroundColor: Theme.of(context).colorScheme.onTertiary,
              titleTextStyle: GoogleFonts.robotoCondensed(
                textStyle: Theme.of(context).appBarTheme.titleTextStyle,
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.w900
              ),  
              title: Container(
              height: 120, alignment: Alignment.center, padding: EdgeInsets.all(10),  
                  child: Image.asset(
                  'assets/images/banner.png',
                  fit: BoxFit.contain, alignment: Alignment.bottomCenter,
                ),
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
                // color: Theme.of(context).colorScheme.tertiaryContainer,
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
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
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical : 5),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor.withOpacity(0.4))
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sign In".toUpperCase(),
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.titleMedium,
                                  letterSpacing: 1.25,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.info_outline), 
                                  onPressed: (){
                                    _showInfoDialog(context);
                                  }, 
                                ),
                              ],
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
                                    prefixIcon: Container(
                                      height: 44, width: 44, alignment: Alignment.center, child: Text("+91"),
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    labelText: 'Enter Mobile Number'.toLowerCase(),
                                    labelStyle: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                    // hintText: 'Enter Mobile Number'.toLowerCase(),
                                    // hintStyle: GoogleFonts.roboto(
                                    //   textStyle: Theme.of(context).textTheme.labelMedium,
                                    //   letterSpacing: 1.8,
                                    //   fontWeight: FontWeight.w300
                                    // ),
                                    
                                  ),
                                ),
                                ),
                                

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Checkbox(
                                        activeColor: Theme.of(context).colorScheme.primary,
                                        side: BorderSide(width: 1, color: Theme.of(context).colorScheme.outline),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4)
                                        ),
                                        value: checkedValue, 
                                         onChanged: (newValue) {
                                          setState(() {
                                            checkedValue = !checkedValue;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: GoogleFonts.roboto(
                                          textStyle: Theme.of(context).textTheme.labelSmall,
                                          letterSpacing: 1.25,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "By providing, your mobile number you have acceptable or ",
                                          ),
                                          TextSpan(
                                            style: TextStyle(decoration: TextDecoration.underline, color: Theme.of(context).colorScheme.primary),
                                            text: "Terms and Conditions",
                                            recognizer: TapGestureRecognizer()
                                            ..onTap = (){
                                              _showTermsDialog(context);
                                            }
                                          ),
                                        ],
                                      ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Checkbox(
                                        activeColor: Theme.of(context).colorScheme.primary,
                                        side: BorderSide(width: 1, color: Theme.of(context).colorScheme.outline),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4)
                                        ),
                                        value: checkedValue, 
                                         onChanged: (newValue) {
                                          setState(() {
                                            checkedValue = !checkedValue;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text('Pune Metro may keep you informed via personalized emails and sms about products and services',
                                        style: GoogleFonts.roboto(
                                          textStyle: Theme.of(context).textTheme.labelSmall,
                                          letterSpacing: 1.25, fontSize: 10, fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                    
                                  ],
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
                                builder: (BuildContext context) => OTP()
                              )
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                            alignment: Alignment.center,
                            backgroundColor: Theme.of(context).colorScheme.primary,
                          ),
                          child: Text('Get OTP'),
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


  // TERMS DIALOG
  Future<void> _showTermsDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          
          scrollable: true,
          
          backgroundColor: Theme.of(context).colorScheme.background,
          surfaceTintColor: Theme.of(context).colorScheme.background,
          title: Text('Terms of Service'),
          titleTextStyle: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.titleLarge,
            fontWeight: FontWeight.bold
          ),
          content: Container(
            child: Column(
              children: [
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"),

              ],
            ),
          ),
          contentTextStyle: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.titleMedium,
            fontWeight: FontWeight.w400
          ),
          actionsAlignment: MainAxisAlignment.end,
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.secondary,
              ),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
            
          ],
        );
      },
    );
  }

  // INFO DIALOG
  Future<void> _showInfoDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.background,
          surfaceTintColor: Theme.of(context).colorScheme.background,
          icon: Icon(Icons.warning, size: 64, color: Colors.amber,),
          title: Text('Why do we need this',
          style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.titleLarge,
            fontWeight: FontWeight.bold
          )),
          content: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,",
          style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.titleMedium,
            fontWeight: FontWeight.w400
          )
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
            
          ],
        );
      },
    );
  }


}
