import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metro/main.dart';
import 'package:metro/ui/bookticket.dart';
import 'package:metro/ui/bookticket_steps.dart';
import 'package:metro/ui/dashboard.dart';
import 'package:metro/ui/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  int currentPageIndex = 0;
  // bool _showLabel = true;

  // void _onShowNotchChanged(bool value) {
  //   setState(() {
  //     _showLabel = value;
  //   });
  // }

   void _themeChange() {
    MyApp.themeNotifier.value = 
    MyApp.themeNotifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }


  NavigationDestinationLabelBehavior _showLabel = NavigationDestinationLabelBehavior.alwaysShow;

  void _onShowLabelChanged(NavigationDestinationLabelBehavior? value) {
    setState(() {
      _showLabel = value ?? NavigationDestinationLabelBehavior.alwaysShow;
    });
  }

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
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              
              Expanded(
                child: Scaffold(
                  body: <Widget>[
                    Dashboard(title: 'Dashboard'),
                    BookTicketSteps(title: 'Book Tickets'),
                    // Container(
                    //   alignment: Alignment.center,
                    //   color: Colors.green.shade100,
                    //   child: Text('Book Tickets',
                    //     style: Theme.of(context).textTheme.displayMedium,
                    //   ),
                    // ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.deepPurpleAccent.shade100,
                      child: Text('View Tickets',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                  ][currentPageIndex],
                ),
                
              ),
            ],
          )
        ),

      bottomNavigationBar: 
      NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        labelBehavior: _showLabel,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            selectedIcon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.qr_code_2_outlined),
            selectedIcon: Icon(Icons.qr_code_2),
            label: 'Book Ticket',
          ),
          NavigationDestination(
            icon: Icon(Icons.confirmation_num_outlined),
            selectedIcon: Icon(Icons.confirmation_num),
            label: 'View Tickets',
          ),
          
        ],
      ),
    );
  }
}
