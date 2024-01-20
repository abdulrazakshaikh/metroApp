
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro/ui/login/login.dart';
import 'package:intl/intl.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

final List<bool> _selectedOptions = <bool>[true, false, false];
List<Widget> options = <Widget>[
  Text('Male',),
  Text('Female'),
  Text('Other')
];

final List<bool> _selectedLangOptions = <bool>[true, false, false];
List<Widget> langoptions = <Widget>[
  Text('English',),
  Text('Hindi'),
  Text('Marathi')
];

  bool checkedValue = false;

  TextEditingController dateinput = TextEditingController(); 
  
  void showPicker() async {
    DateTime? pickedDate = await showDatePicker(
      context: context, 
      initialDate: DateTime.now(),
      firstDate:  DateTime(DateTime.now().year - 100),
      lastDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      keyboardType: TextInputType.datetime,

    );
    if(pickedDate != null ){
        // print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
        String formattedDate = DateFormat('dd-MM-yyy').format(pickedDate); 
        // String formattedDate = DateFormat("EEEE").format(DateTime.now());
        // print(formattedDate); //formatted date output using intl package =>  2021-03-16
          //you can implement different kind of Date Format here according to your requirement
        setState(() {
          dateinput.text = formattedDate; //set output date to TextField value. 
        });
    }else{
        // print("Date is not selected");
    }
  }

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
                                Text('Register'.toUpperCase(),
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
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    labelText: 'Name'.toUpperCase(),
                                    labelStyle: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                                ),

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
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    labelText: 'Email Address'.toUpperCase(),
                                    labelStyle: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(bottom: 15),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Select Gender'.toUpperCase(),
                                        style: GoogleFonts.roboto(
                                          textStyle: Theme.of(context).textTheme.labelSmall,
                                          letterSpacing: 1.8,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      ToggleButtons(
                                        direction: Axis.horizontal,
                                        onPressed: (int index) {
                                          setState(() {
                                            // The button that is tapped is set to true, and the others to false.
                                            for (int i = 0; i < _selectedOptions.length; i++) {
                                              _selectedOptions[i] = i == index;
                                            }
                                          });
                                        },
                                        
                                        constraints: const BoxConstraints(
                                          minHeight: 38.0,
                                          minWidth: 80.0,
                                        ),
                                        isSelected: _selectedOptions,
                                        children: options,
                                      ),
                                    ],
                                  )
                                ),


                                Container(
                                margin: EdgeInsets.only(bottom: 15),
                                child: TextField(
                                  style: GoogleFonts.roboto(
                                    textStyle: Theme.of(context).textTheme.bodyMedium,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                  textAlignVertical: TextAlignVertical.center,
                                  // initialValue: pickedDate,
                                  controller: dateinput, 
                                  
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7))),
                                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary)),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    prefixIcon: Icon(Icons.calendar_month_outlined, color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),),
                                    suffixIcon : 
                                    dateinput.text.length == 0 ? null :
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          dateinput.clear();
                                        });
                                      },
                                      child: Icon(Icons.clear, size: 18, color: Colors.red,),
                                    ),
                                    labelText: 'Date of Birth'.toUpperCase(),
                                    labelStyle: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  readOnly: true,  
                                  onTap: () => showPicker(),
                                ),
                              ),

                              Container(
                                  margin: EdgeInsets.only(bottom: 15),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Select Language'.toUpperCase(),
                                        style: GoogleFonts.roboto(
                                          textStyle: Theme.of(context).textTheme.labelSmall,
                                          letterSpacing: 1.8,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      ToggleButtons(
                                        direction: Axis.horizontal,
                                        onPressed: (int index) {
                                          setState(() {
                                            // The button that is tapped is set to true, and the others to false.
                                            for (int i = 0; i < _selectedLangOptions.length; i++) {
                                              _selectedLangOptions[i] = i == index;
                                            }
                                          });
                                        },
                                        
                                        constraints: const BoxConstraints(
                                          minHeight: 38.0,
                                          minWidth: 80.0,
                                        ),
                                        isSelected: _selectedLangOptions,
                                        children: langoptions,
                                      ),
                                    ],
                                  )
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Text('Allow app to share newsletter and promotion',
                                        style: GoogleFonts.roboto(
                                          textStyle: Theme.of(context).textTheme.labelSmall,
                                          letterSpacing: 1.25, fontSize: 12, fontWeight: FontWeight.w400
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
                                builder: (BuildContext context) => Login()
                              )
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                            alignment: Alignment.center,
                            backgroundColor: Theme.of(context).colorScheme.primary,
                          ),
                          child: Text('Register'),
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
