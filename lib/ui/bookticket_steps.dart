import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metro/main.dart';
import 'package:metro/ui/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro/widgets/separator.dart';

class BookTicketSteps extends StatefulWidget {
  const BookTicketSteps({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BookTicketSteps> createState() => _BookTicketStepsState();
}

class _BookTicketStepsState extends State<BookTicketSteps> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }


  int qtyPessengers = 0;
  int qtyChild = 0;

  void incrementPessengers() {
    setState(() {
      qtyPessengers = qtyPessengers + 1;
    });
  }

  void decrementPessengers() {
    setState(() {
      if (qtyPessengers > 0) {
        qtyPessengers = qtyPessengers - 1;
      }
    });
  }
  
  int _currentStep = 0;
  String? selectedValue;

  // List of items for the dropdown menu
  List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SafeArea(
      child: 
        Stepper(
        // stepIconWidth: 32,
        // stepIconHeight: 32,
        connectorThickness: 1,
        physics: ClampingScrollPhysics(),
        steps: _stepper(),
        type: StepperType.horizontal,
        currentStep: this._currentStep,
        margin: EdgeInsets.zero,
        controlsBuilder: (BuildContext context, ControlsDetails details){
         return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              if(_currentStep == 1)
              Expanded(
                child: OutlinedButton(
                  onPressed: details.onStepCancel,
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    alignment: Alignment.center,
                    side:  BorderSide(width: 1, color: Theme.of(context).colorScheme.secondary),
                    foregroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  child: Text('Back'),
                ),
              ),
              if(_currentStep == 1)
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: details.onStepContinue,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    alignment: Alignment.center,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  child: Text(
                    _currentStep == 0 ?
                    'Confirm Ticket' 
                    :
                    _currentStep == 1 ?
                    'Pay (via PayU)' 
                    :
                    _currentStep == 2 ?
                    'Download Ticket' 
                    :
                    '',
                  ),
                ),
              ),
              
            ],
          ),
         );
       },
        onStepContinue: () {
          setState(() {
            if (this._currentStep < this._stepper().length - 1) {
              this._currentStep = this._currentStep + 1;
            } else {
              //Logic
              print('complete');
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (this._currentStep > 0) {
              this._currentStep = this._currentStep - 1;
            } else {
              this._currentStep = 0;
            }
          });
        },
      ),
      
      ),
    );
  }

  List<Step> _stepper() {
    List<Step> _steps = [
      Step(
        title: Text('Book', style: Theme.of(context).textTheme.titleMedium,), 
        content: Container(
          child: Card(
            elevation: 3,
            color: Theme.of(context).cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
           child: Column(
              children: [
                TabBar(
                    controller: tabController,
                    tabs: [
                      Tab(
                        iconMargin: EdgeInsets.zero,
                        text: 'Single',
                        icon: Icon(Icons.straight),
                      ),
                      Tab(
                        text: 'Return',
                        icon: Icon(Icons.import_export),
                      ),
                      Tab(
                        text: 'Group',
                        icon: Icon(Icons.groups_outlined),
                      ),
                    ],
                  ),
               
                Container(
                height: 240,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    
                    Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: DropdownButtonFormField(
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            fontWeight: FontWeight.w600, letterSpacing: 1.2,
                          ),
                          value: selectedValue,
                          items: items.map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            focusColor:  Colors.transparent,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7))),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary)),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: 'Select Station From'.toLowerCase(),
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
                        child: DropdownButtonFormField(
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            fontWeight: FontWeight.w600, letterSpacing: 1.2,
                          ),
                          value: selectedValue,
                          items: items.map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            focusColor:  Colors.transparent,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7))),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary)),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: 'Select Station To'.toLowerCase(),
                            labelStyle: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.labelMedium,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),

                      Container(
                        child: Row(
                          children: [
                          
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text('No. of Paasengers',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () => decrementPessengers(),
                                          child: Container(
                                            width: 32, height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(4)),
                                              color: (qtyPessengers == 0) ? const Color(0xffdedede) : Theme.of(context).colorScheme.primary,
                                            ),
                                            child: Icon(Icons.remove,size: 20.0, color: Theme.of(context).colorScheme.onPrimary),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 15),
                                          child: Text(
                                            "${qtyPessengers}",
                                            style: Theme.of(context).textTheme.titleLarge
                                          ),
                                        ),
                                        
                                        InkWell(
                                          onTap: () => incrementPessengers(),
                                          child: Container(
                                            width: 32, height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(4)),
                                              color: Theme.of(context).colorScheme.primary,
                                            ),
                                            child: Icon(Icons.add, size: 20.0, color: Theme.of(context).colorScheme.onPrimary),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text('Total Fare',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                    ),
                                  ),
                                  Container(
                                    child: Text('₹10',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.titleLarge,
                                      letterSpacing: 1.8,
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            
                          ],
                        ),
                      ),

                        ],
                      ),
                    ),
                    
                    Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: DropdownButtonFormField(
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            fontWeight: FontWeight.w600, letterSpacing: 1.2,
                          ),
                          value: selectedValue,
                          items: items.map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            focusColor:  Colors.transparent,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7))),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary)),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: 'Select Station From'.toLowerCase(),
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
                        child: DropdownButtonFormField(
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            fontWeight: FontWeight.w600, letterSpacing: 1.2,
                          ),
                          value: selectedValue,
                          items: items.map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            focusColor:  Colors.transparent,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7))),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary)),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: 'Select Station To'.toLowerCase(),
                            labelStyle: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.labelMedium,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),

                      Container(
                        child: Row(
                          children: [
                          
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text('No. of Paasengers',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () => decrementPessengers(),
                                          child: Container(
                                            width: 32, height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(4)),
                                              color: (qtyPessengers == 0) ? const Color(0xffdedede) : Theme.of(context).colorScheme.primary,
                                            ),
                                            child: Icon(Icons.remove,size: 20.0, color: Theme.of(context).colorScheme.onPrimary),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 15),
                                          child: Text(
                                            "${qtyPessengers}",
                                            style: Theme.of(context).textTheme.titleLarge
                                          ),
                                        ),
                                        
                                        InkWell(
                                          onTap: () => incrementPessengers(),
                                          child: Container(
                                            width: 32, height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(4)),
                                              color: Theme.of(context).colorScheme.primary,
                                            ),
                                            child: Icon(Icons.add, size: 20.0, color: Theme.of(context).colorScheme.onPrimary),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text('Total Fare',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                    ),
                                  ),
                                  Container(
                                    child: Text('₹10',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.titleLarge,
                                      letterSpacing: 1.8,
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            
                          ],
                        ),
                      ),

                        ],
                      ),
                    ),
                    
                    Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: DropdownButtonFormField(
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            fontWeight: FontWeight.w600, letterSpacing: 1.2,
                          ),
                          value: selectedValue,
                          items: items.map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            focusColor:  Colors.transparent,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7))),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary)),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: 'Select Station From'.toLowerCase(),
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
                        child: DropdownButtonFormField(
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            fontWeight: FontWeight.w600, letterSpacing: 1.2,
                          ),
                          value: selectedValue,
                          items: items.map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            focusColor:  Colors.transparent,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7))),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary)),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: 'Select Station To'.toLowerCase(),
                            labelStyle: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.labelMedium,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),

                      Container(
                        child: Row(
                          children: [
                          
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text('No. of Paasengers',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () => decrementPessengers(),
                                          child: Container(
                                            width: 32, height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(4)),
                                              color: (qtyPessengers == 0) ? const Color(0xffdedede) : Theme.of(context).colorScheme.primary,
                                            ),
                                            child: Icon(Icons.remove,size: 20.0, color: Theme.of(context).colorScheme.onPrimary),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 15),
                                          child: Text(
                                            "${qtyPessengers}",
                                            style: Theme.of(context).textTheme.titleLarge
                                          ),
                                        ),
                                        
                                        InkWell(
                                          onTap: () => incrementPessengers(),
                                          child: Container(
                                            width: 32, height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(4)),
                                              color: Theme.of(context).colorScheme.primary,
                                            ),
                                            child: Icon(Icons.add, size: 20.0, color: Theme.of(context).colorScheme.onPrimary),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text('Total Fare',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                    ),
                                  ),
                                  Container(
                                    child: Text('₹10',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.titleLarge,
                                      letterSpacing: 1.8,
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            
                          ],
                        ),
                      ),

                        ],
                      ),
                    ),
                    
                  ]
                ),
                ),
              ],
            ),
          ),
        ),
        isActive: _currentStep >= 0,
        state: StepState.complete, 
      ),
      Step(
        title: Text('Pay', style: Theme.of(context).textTheme.titleMedium,),
        content: Container(
          child: Card(
            elevation: 4,
            clipBehavior: Clip.hardEdge,
            color: Theme.of(context).cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  padding: EdgeInsetsDirectional.all(3),
                  child: Text('Single Journey Ticket'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.titleSmall,
                      letterSpacing: 1.8, fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.primary
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 025,
                      child: Container(
                        height: 170,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1, color: Theme.of(context).colorScheme.secondary.withOpacity(0.3))
                          )
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('26',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.headlineLarge,
                              fontWeight: FontWeight.w700, letterSpacing: 1.2,
                              
                            ),
                            ),
                            Text('January'.toUpperCase(),
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.labelMedium,
                              fontWeight: FontWeight.w300
                            ),
                            ),
                          ],
                        ),
                        
                      ),
                    ),
                    Expanded(
                      flex: 075,
                      child: Container(
                        height: 170,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Orgin',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text('PCMC',
                                    style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.titleSmall,
                                  letterSpacing: 1.2, fontWeight: FontWeight.bold,
                                ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Destination',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text('Sant Tukaram Nagar',
                                    style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.titleSmall,
                                  letterSpacing: 1.2, fontWeight: FontWeight.bold,
                                ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: 
                                    Container(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Quantity',
                                          style: GoogleFonts.roboto(
                                            textStyle: Theme.of(context).textTheme.labelMedium,
                                            letterSpacing: 1.8,
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                        Text('3',
                                          style: GoogleFonts.roboto(
                                            textStyle: Theme.of(context).textTheme.titleMedium,
                                            letterSpacing: 1.8,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ),
                                  Expanded(
                                    child: 
                                    Container(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Fare',
                                          style: GoogleFonts.roboto(
                                            textStyle: Theme.of(context).textTheme.labelMedium,
                                            letterSpacing: 1.8,
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                        Text('₹60',
                                          style: GoogleFonts.roboto(
                                            textStyle: Theme.of(context).textTheme.titleMedium,
                                            letterSpacing: 1.8,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    )
                    
                  ],
                ),
              ],
            ),
          ),
        ),
        isActive: _currentStep >= 1,
        state: StepState.complete,
      ),
      Step(    
        title: Text('Ride', style: Theme.of(context).textTheme.titleMedium,),
        content: Container(
          child: Card(
            elevation: 4,
            color: Theme.of(context).cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 1, color: Theme.of(context).dividerColor.withOpacity(0.1))
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child:  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: 
                              Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Journey Type',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text('Single',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.titleSmall,
                                      letterSpacing: 1.2, fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ),
                            Expanded(
                              child: 
                              Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Booking Time',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text('20 Jan 2021' '|' '14:01',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.titleSmall,
                                      letterSpacing: 1.2, fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: 
                              Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('From Station',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text('PCMC',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.titleSmall,
                                      letterSpacing: 1.2, fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ),
                            Expanded(
                              child: 
                              Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('To Station',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text('Sant Tukaram Nagar',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.titleSmall,
                                      letterSpacing: 1.2, fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: 
                              Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('No. of Tickets',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text('3',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.titleSmall,
                                      letterSpacing: 1.2, fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ),
                            Expanded(
                              child: 
                              Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Ticket Fare',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.labelMedium,
                                      letterSpacing: 1.8,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text('₹60',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.titleSmall,
                                      letterSpacing: 1.2, fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),

                ),
                Container(child: Separator(color: Theme.of(context).colorScheme.secondary.withOpacity(0.25),)),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Transaction Ref No.',
                              style: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.labelMedium,
                                letterSpacing: 1.8,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('464564561001465076598546',
                              style: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.titleSmall,
                                letterSpacing: 1.2, fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ticket Serial No.',
                              style: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.labelMedium,
                                letterSpacing: 1.8,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('146415MDJ3212541SBVH',
                              style: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.titleSmall,
                                letterSpacing: 1.2, fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Payment Method',
                              style: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.labelMedium,
                                letterSpacing: 1.8,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('Payment Gateway(Pay U)',
                              style: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.titleSmall,
                                letterSpacing: 1.2, fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  )
                ),
                Container(child: Separator(color: Theme.of(context).colorScheme.secondary.withOpacity(0.25),)),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/qr.png",
                      width: 180.0,
                      height: 180.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
        // content: Container(
          
        //         // width: MediaQuery.of(context).size.width,
        //         decoration: const BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.all(
        //             Radius.circular(
        //               16.0,
        //             ),
        //           ),
        //         ),
        //         child: Stack(
        //           children: [
        //             const Positioned(
        //               top: 64,
        //               left: -18,
        //               child: CircleAvatar(
        //                 radius: 18,
        //                 backgroundColor: Color(0xff393e48),
        //               ),
        //             ),
        //             const Positioned(
        //               top: 64,
        //               right: -18,
        //               child: CircleAvatar(
        //                 radius: 18,
        //                 backgroundColor: Color(0xff393e48),
        //               ),
        //             ),
        //             const Positioned(
        //               top: 80,
        //               left: 18,
        //               right: 18,
        //               child: Separator(),
        //             ),
        //             const Positioned(
        //               bottom: 135,
        //               left: -18,
        //               child: CircleAvatar(
        //                 radius: 18,
        //                 backgroundColor: Color(0xff393e48),
        //               ),
        //             ),
        //             const Positioned(
        //               bottom: 135,
        //               right: -18,
        //               child: CircleAvatar(
        //                 radius: 18,
        //                 backgroundColor: Color(0xff393e48),
        //               ),
        //             ),
        //             const Positioned(
        //               bottom: 150,
        //               left: 18,
        //               right: 18,
        //               child: Separator(),
        //             ),
        //             Container(
        //               // width: MediaQuery.of(context).size.width,
        //               // height: MediaQuery.of(context).size.height,
        //               margin: const EdgeInsets.all(30.0),
        //               child: const Column(
        //                 children: [
        //                   Row(
        //                     children: [
        //                       Expanded(
        //                         child: Text(
        //                           "Executive",
        //                           style: TextStyle(
        //                             fontSize: 16.0,
        //                             color: Color(0xff393e48),
        //                           ),
        //                         ),
        //                       ),
        //                       Text(
        //                         "18 Juni 2013",
        //                         style: TextStyle(
        //                           fontSize: 16.0,
        //                           fontWeight: FontWeight.bold,
        //                           color: Color(0xff393e48),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                   SizedBox(
        //                     height: 60.0,
        //                   ),
        //                   Row(
        //                     children: [
        //                       Expanded(
        //                         child: Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Text(
        //                               "From",
        //                               style: TextStyle(
        //                                 color: Color(0xffaeb2b4),
        //                                 fontSize: 12.0,
        //                               ),
        //                             ),
        //                             Text(
        //                               "Pati",
        //                               style: TextStyle(
        //                                 fontSize: 16.0,
        //                                 color: Color(0xff393e48),
        //                                 fontWeight: FontWeight.bold,
        //                               ),
        //                             )
        //                           ],
        //                         ),
        //                       ),
        //                       Expanded(
        //                         child: Column(
        //                           crossAxisAlignment: CrossAxisAlignment.end,
        //                           children: [
        //                             Text(
        //                               "To",
        //                               style: TextStyle(
        //                                 color: Color(0xffaeb2b4),
        //                                 fontSize: 12.0,
        //                               ),
        //                             ),
        //                             Text(
        //                               "Kudus",
        //                               style: TextStyle(
        //                                 fontSize: 16.0,
        //                                 color: Color(0xff393e48),
        //                                 fontWeight: FontWeight.bold,
        //                               ),
        //                             )
        //                           ],
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                   SizedBox(
        //                     height: 20.0,
        //                   ),
        //                   Row(
        //                     children: [
        //                       Expanded(
        //                         child: Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Text(
        //                               "Depature",
        //                               style: TextStyle(
        //                                 color: Color(0xffaeb2b4),
        //                                 fontSize: 12.0,
        //                               ),
        //                             ),
        //                             Text(
        //                               "08:00 AM",
        //                               style: TextStyle(
        //                                 fontSize: 16.0,
        //                                 color: Color(0xff393e48),
        //                                 fontWeight: FontWeight.bold,
        //                               ),
        //                             )
        //                           ],
        //                         ),
        //                       ),
        //                       Expanded(
        //                         child: Column(
        //                           crossAxisAlignment: CrossAxisAlignment.end,
        //                           children: [
        //                             Text(
        //                               "Arrival",
        //                               style: TextStyle(
        //                                 color: Color(0xffaeb2b4),
        //                                 fontSize: 12.0,
        //                               ),
        //                             ),
        //                             Text(
        //                               "09:00 AM",
        //                               style: TextStyle(
        //                                 fontSize: 16.0,
        //                                 color: Color(0xff393e48),
        //                                 fontWeight: FontWeight.bold,
        //                               ),
        //                             )
        //                           ],
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                   SizedBox(
        //                     height: 20.0,
        //                   ),
        //                   Row(
        //                     children: [
        //                       Expanded(
        //                         child: Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Text(
        //                               "Class",
        //                               style: TextStyle(
        //                                 color: Color(0xffaeb2b4),
        //                                 fontSize: 12.0,
        //                               ),
        //                             ),
        //                             Text(
        //                               "Executive",
        //                               style: TextStyle(
        //                                 fontSize: 16.0,
        //                                 color: Color(0xff393e48),
        //                                 fontWeight: FontWeight.bold,
        //                               ),
        //                             )
        //                           ],
        //                         ),
        //                       ),
        //                       Expanded(
        //                         child: Column(
        //                           crossAxisAlignment: CrossAxisAlignment.end,
        //                           children: [
        //                             Text(
        //                               "Seat",
        //                               style: TextStyle(
        //                                 color: Color(0xffaeb2b4),
        //                                 fontSize: 12.0,
        //                               ),
        //                             ),
        //                             Text(
        //                               "Executive, Seat 12",
        //                               style: TextStyle(
        //                                 fontSize: 16.0,
        //                                 color: Color(0xff393e48),
        //                                 fontWeight: FontWeight.bold,
        //                               ),
        //                             )
        //                           ],
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                   SizedBox(
        //                     height: 20.0,
        //                   ),
        //                   Row(
        //                     children: [
        //                       Expanded(
        //                         child: Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Text(
        //                               "Passanger",
        //                               style: TextStyle(
        //                                 color: Color(0xffaeb2b4),
        //                                 fontSize: 12.0,
        //                               ),
        //                             ),
        //                             Text(
        //                               "1 Adult",
        //                               style: TextStyle(
        //                                 fontSize: 16.0,
        //                                 color: Color(0xff393e48),
        //                                 fontWeight: FontWeight.bold,
        //                               ),
        //                             )
        //                           ],
        //                         ),
        //                       ),
        //                       Expanded(
        //                         child: Column(
        //                           crossAxisAlignment: CrossAxisAlignment.end,
        //                           children: [
        //                             Text(
        //                               "Baggage",
        //                               style: TextStyle(
        //                                 color: Color(0xffaeb2b4),
        //                                 fontSize: 12.0,
        //                               ),
        //                             ),
        //                             Text(
        //                               "15 KG",
        //                               style: TextStyle(
        //                                 fontSize: 16.0,
        //                                 color: Color(0xff393e48),
        //                                 fontWeight: FontWeight.bold,
        //                               ),
        //                             )
        //                           ],
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Positioned(
        //               bottom: 15,
        //               left: 0,
        //               right: 0,
        //               child: SizedBox(
        //                 width: MediaQuery.of(context).size.width,
        //                 child: Image.asset(
        //                   "assets/images/qr.png",
        //                   width: 120.0,
        //                   height: 120.0,
        //                   fit: BoxFit.contain,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
           
        isActive: _currentStep >= 2,
        state: StepState.complete
      ),
    ];
    return _steps;
  }
}
