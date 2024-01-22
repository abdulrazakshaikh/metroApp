import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metro/main.dart';
import 'package:metro/ui/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro/ui/login/login.dart';
import 'package:metro/ui/profile.dart';

class Account extends StatefulWidget {
  const Account({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

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
                    Container(
                      padding: EdgeInsets.symmetric(vertical : 15, horizontal: 15),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor.withOpacity(0.4))
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Account Details'.toUpperCase(),
                          style: GoogleFonts.robotoCondensed(
                            textStyle: Theme.of(context).textTheme.titleMedium,
                            letterSpacing: 1.25,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      title: Text('Name : ',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.labelMedium,
                          letterSpacing: 1.2,
                        ),
                      ),
                      trailing: Text('John Doe',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          letterSpacing: 1.2, fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      title: Text('Email : ',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.labelMedium,
                          letterSpacing: 1.2,
                        ),
                      ),
                      trailing: Text('johndoe@gmail.com',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          letterSpacing: 1.2, fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      title: Text('Mobile : ',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.labelMedium,
                          letterSpacing: 1.2,
                        ),
                      ),
                      trailing: Text('+91 9876543210',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          letterSpacing: 1.2, fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      title: Text('Gender : ',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.labelMedium,
                          letterSpacing: 1.2,
                        ),
                      ),
                      trailing: Text('Male',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          letterSpacing: 1.2, fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      title: Text('Date of Birth : ',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.labelMedium,
                          letterSpacing: 1.2,
                        ),
                      ),
                      trailing: Text('01/01/1947',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          letterSpacing: 1.2, fontWeight: FontWeight.w500
                        ),
                      ),
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
