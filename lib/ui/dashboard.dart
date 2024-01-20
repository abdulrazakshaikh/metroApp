import 'package:flutter/material.dart';
import 'package:metro/main.dart';
import 'package:metro/ui/bookticket.dart';
import 'package:metro/ui/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

List cardsList = [
  {
    "id": "001",
    "title" : "Book Ticket",
    "img": "assets/images/bookticket.png",
  },
  {
    "id": "002",
    "title" : "View Ticket",
    "img": "assets/images/viewticket.png",
  },
  {
    "id": "003",
    "title" : "Fare Enquiry",
    "img": "assets/images/ticketfare.png",
  },
  {
    "id": "004",
    "title" : "Feeder Services",
    "img": "assets/images/feederservices.png",
  },
  {
    "id": "005",
    "title" : "One Pune Card",
    "img": "assets/images/onecard.png",
  },
  {
    "id": "006",
    "title" : "Explore Pune",
    "img": "assets/images/explore.png",
  },
  {
    "id": "007",
    "title" : "Station List",
    "img": "assets/images/stationlist.png",
  },
  {
    "id": "008",
    "title" : "Metro Map",
    "img": "assets/images/metromap.png",
  },
  {
    "id": "009",
    "title" : "Help",
    "img": "assets/images/help.png",
  },
  {
    "id": "010",
    "title" : "Customer Care",
    "img": "assets/images/customercare.png",
  },
  {
    "id": "011",
    "title" : "Time Table",
    "img": "assets/images/timetable.png",
  },
 
];
var _cardDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
    BoxShadow(
      color: Color(0xFF818181).withOpacity(0.4),                              
      spreadRadius: 1,
      blurRadius: 4,
      offset: Offset(0, 1), // changes position of shadow
    ),
  ],
);

 
  @override
  Widget build(BuildContext context) {

  var maxWidth = MediaQuery.of(context).size.width / 3;
  var width = MediaQuery.of(context).size.width;
  var columns = (width ~/ maxWidth) + 1;
  var columnWidth = width / columns;
  var aspectRatio = columnWidth / 100;

    return SingleChildScrollView(
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
            Padding(
              padding: EdgeInsets.all(15),
              child: GridView.builder(
              primary: true,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: maxWidth, 
                childAspectRatio: aspectRatio,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: cardsList == null ? 0 : cardsList.length,
              itemBuilder: (BuildContext context, int index) {
                Map carditem = cardsList[index];
                return InkWell(
                  hoverColor: Colors.transparent,
                  onTap: (){
                    carditem['id']== '001' ?
                    Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => BookTicket(title: 'Book Ticket')), 
                    )
                    :
                    null;
                  },
                  child: Container(              
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          color: Theme.of(context).cardColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        elevation: 4,
                        child: Container(
                          // height: MediaQuery.of(context).size.width < 374 ?  54 : 64, 
                          // width: MediaQuery.of(context).size.width < 374 ?  54 : 64, 
                          width: 74, height: 74,
                          padding: EdgeInsets.all(15),
                          child: Image.asset('${carditem["img"]}', fit: BoxFit.contain),
                        ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          alignment: Alignment.topCenter,
                          child: Text('${carditem["title"]}', textAlign: TextAlign.center, softWrap: false,
                            style: Theme.of(context).textTheme.titleSmall
                          ),
                        ),
                      ],
                    )
                  ),
                );
              }
            ),
          ),
          
          ],
        ),
      );
  }
}
