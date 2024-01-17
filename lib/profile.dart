import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metro_app/main.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(widget.title),
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
          onPressed : (){},
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

            
          ],
        ),
      ),
    );
  }
}
