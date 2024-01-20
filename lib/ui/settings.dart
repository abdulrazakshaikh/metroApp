import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metro/main.dart';
import 'package:metro/ui/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro/ui/login/login.dart';
import 'package:metro/ui/profile.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

void _themeChange() {
  MyApp.themeNotifier.value = 
  MyApp.themeNotifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
}
  bool switchValue = false;

  String? selectedOption = 'English';
  
  List<String> dropdownOptions = ['English', 'Hindi', 'Marathi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(widget.title),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[Color(0xFF003753), Color(0xFF065d8a)]
            )          
         ),  
        ),
        actions: [
        IconButton(
        icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
          ? Icons.dark_mode_outlined
          : Icons.light_mode_outlined),
          onPressed : _themeChange,
        ),
        IconButton(
          icon: Icon(Icons.notifications_outlined),
          onPressed : (){},
        ),
        IconButton(
          icon: Icon(Icons.person_2_outlined),
          onPressed : (){
            Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Profile(title: 'Profile')), 
            );
          },
        ),
        
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 120, alignment: Alignment.center, padding: EdgeInsets.all(10),  
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                child: Image.asset(
                'assets/images/banner.png',
                fit: BoxFit.contain, alignment: Alignment.bottomCenter,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Card(
                elevation: 3,
                color: Theme.of(context).cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.all(10),
                      title: Text('Access Location',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          letterSpacing: 1.2,
                        ),
                      ),
                      trailing: Switch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                      ),
                    ),
                    Divider(height: 1),
                    ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.all(10),
                      title: Text('Enable App Lock',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          letterSpacing: 1.2,
                        ),
                      ),
                      trailing: Switch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                      ),
                    ),
                    Divider(height: 1),
                    ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.all(10),
                      title: Text('Enable Promotional Messages',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          letterSpacing: 1.2,
                        ),
                      ),
                      trailing: Switch( 
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                      ),
                    ),
                    Divider(height: 1),
                    ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.all(10),
                      title: Text('Select Language',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          letterSpacing: 1.2,
                        ),
                      ),
                      trailing: Container(
                        width: 120,
                        child: DropdownButtonFormField<String>(
                        value: selectedOption,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedOption = newValue;
                          });
                        },
                        items: dropdownOptions.map((String option) {
                          return DropdownMenuItem<String>(
                            value: option,
                            child: Text(
                              option,
                              style: GoogleFonts.robotoCondensed(
                                textStyle: Theme.of(context).textTheme.titleMedium,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7))),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary)),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                      )
                    ),
          

                  ],
                ),
              ),
            ),

            
          ],
        ),
      ),
    
      
    );
  }
}
