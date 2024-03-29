import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metro/main.dart';
import 'package:metro/ui/account.dart';
import 'package:metro/ui/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro/ui/login/login.dart';
import 'package:metro/ui/settings.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

void _themeChange() {
  MyApp.themeNotifier.value = 
  MyApp.themeNotifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
}

List menuList = [
  {
    "id": "001",
    "icon" : Icons.settings_outlined,
    "title": "Settings",
  },
  {
    "id": "002",
    "icon" : Icons.account_circle_outlined,
    "title": "Account",
  },
  {
    "id": "003",
    "icon" : Icons.warning_amber_outlined,
    "title": "Disclaimer",
  },
  {
    "id": "004",
    "icon" : Icons.logout_outlined,
    "title": "Signout",
  },

];
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
                    ListView.separated(
                      primary: false,
                      physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: menuList == null ? 0 : menuList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(height: 1);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        Map item = menuList[index];
                        return ListTile(
                          leading: Icon(item["icon"], color: Theme.of(context).colorScheme.primary,),
                          trailing: Icon(Icons.chevron_right_outlined, color: Colors.grey.shade400,),
                          title: Text(
                            '${item["title"]}',
                            style: GoogleFonts.robotoCondensed(
                              textStyle: Theme.of(context).textTheme.titleMedium,
                              letterSpacing: 1.2,
                            ),
                          ),
                          onTap: () {
                            item['id']== '001' ?
                            Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => Settings(title: 'Settings')), 
                            )
                            :
                            item['id']== '002' ?
                            Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => Account(title: 'Account')), 
                            )
                            :
                            item['id']== '003' ?
                           _showDisclaimerDialog(context)
                            :
                            item['id']== '004' ?
                            Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => Login()), 
                            )
                            :
                            null;
                          },
                        );
                      },
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

// DISCLAIMER DIALOG
Future<void> _showDisclaimerDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        
        scrollable: true,
        
        backgroundColor: Theme.of(context).colorScheme.background,
        surfaceTintColor: Theme.of(context).colorScheme.background,
        title: Text('Disclaimer'),
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
