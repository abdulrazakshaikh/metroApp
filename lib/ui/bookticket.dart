import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metro/main.dart';
import 'package:metro/ui/bookticket_steps.dart';
import 'package:metro/ui/profile.dart';
import 'package:google_fonts/google_fonts.dart';

class BookTicket extends StatefulWidget {
  const BookTicket({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BookTicket> createState() => _BookTicketState();
}

class _BookTicketState extends State<BookTicket> {
  void _themeChange() {
    MyApp.themeNotifier.value = 
    MyApp.themeNotifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  int _currentStep = 0;
  String? selectedValue;

  // List of items for the dropdown menu
  List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

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
      body : BookTicketSteps(title: 'Book Ticket')
    );
  }
}
