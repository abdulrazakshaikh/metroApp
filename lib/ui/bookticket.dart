import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metro/main.dart';
import 'package:metro/ui/profile.dart';

class BookTicket extends StatefulWidget {
  const BookTicket({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BookTicket> createState() => _BookTicketState();
}

class _BookTicketState extends State<BookTicket> {

  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  switchStepType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical
    );
  }


  @override
  Widget build(BuildContext context) {
  

  

    // return Stepper(
    //     currentStep: _currentStep,
    //     type: StepperType.horizontal,
    //     steps: _steps,
    //     onStepContinue: () {
    //       setState(() {
    //         if (_currentStep < _steps.length - 1) {
    //           _currentStep += 1;
    //         } else {
    //           // Reset to the first step when the last step is reached
    //           _currentStep = 0;
    //         }
    //       });
    //     },
    //     onStepCancel: () {
    //       setState(() {
    //         if (_currentStep > 0) {
    //           _currentStep -= 1;
    //         } else {
    //           // Handle when the first step is reached
    //         }
    //       });
    //     },
    // );
    return Stepper(
              //physics: ClampingScrollPhysics(),
              steps: _stepper(),
              type: stepperType,
              currentStep: this._currentStep,


              // controlsBuilder:  (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
              //   return Container();
              
              // },
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
            );
  }

  List<Step> _stepper() {
    List<Step> _steps = [
      Step(
          title: Text('Order Sent for Confirmation'.toLowerCase(),
          
          ),
          
          content: Container(
            child: Column(
              children: <Widget>[

              ],
            ),
          ),
          isActive: _currentStep >= 0,
          state: StepState.complete
          ),
      Step(
        title: Text('Review your Order'.toLowerCase(),),
          content: Container(
            child: Column(
              children: <Widget>[

              ],
            ),
          ),
          isActive: _currentStep >= 1,
          state: StepState.complete,
          ),
        Step(
          title: Text('Review your Order'.toLowerCase(),),
          
          content: Container(
            child: Column(
              children: <Widget>[

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
