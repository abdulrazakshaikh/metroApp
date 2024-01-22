import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metro/main.dart';
import 'package:metro/ui/profile.dart';
import 'package:google_fonts/google_fonts.dart';

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
      child: Stepper(
        connectorThickness: 5,
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
              if(_currentStep != 0)
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
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: details.onStepContinue,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    alignment: Alignment.center,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  child: Text('Next'),
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
          height: MediaQuery.of(context).size.height - 240,
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
                        text: 'Single',
                        icon: Icon(Icons.person_2),
                      ),
                      Tab(
                        text: 'Return',
                        icon: Icon(Icons.person_2),
                      ),
                      Tab(
                        text: 'Group',
                        icon: Icon(Icons.person_2),
                      ),
                    ],
                    labelColor: Colors.black,
                  ),
                Expanded(
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
                      child: Text('RETURN CONTENT'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text('GROUP CONTENT'),
                    ),
                    
                  ]
                )
                ),
              ],
            ),
           
           
           
           
          ),
        ),
        isActive: _currentStep >= 0,
        state: StepState.complete
      ),
      Step(
        title: Text('Pay', style: Theme.of(context).textTheme.titleMedium,),
        content: Container(
          child: Column(
            children: <Widget>[
              Text('TWO')
            ],
          ),
        ),
        isActive: _currentStep >= 1,
        state: StepState.complete,
      ),
      Step(    
        title: Text('Ride', style: Theme.of(context).textTheme.titleMedium,),
        content: Container(
          child: Column(
            children: <Widget>[
              Text('THREE')
            ],
          ),
        ),
        
        isActive: _currentStep >= 2,
        state: StepState.complete
      ),
    ];
    return _steps;
  }
}
