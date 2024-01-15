import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metro_app/main.dart';

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
    "title" : "Mobile",
    "img": "images/onepay/mobile.png",
  },
  {
    "id": "002",
    "title" : "Gas",
    "img": "images/onepay/gas.png",
  },
  {
    "id": "003",
    "title" : "Electricity",
    "img": "images/onepay/electricity.png",
  },
  {
    "id": "004",
    "title" : "View All",
    "img": "images/onepay/viewall.png",
  },
  {
    "id": "001",
    "title" : "Mobile",
    "img": "images/onepay/mobile.png",
  },
  {
    "id": "002",
    "title" : "Gas",
    "img": "images/onepay/gas.png",
  },
  {
    "id": "003",
    "title" : "Electricity",
    "img": "images/onepay/electricity.png",
  },
  {
    "id": "004",
    "title" : "View All",
    "img": "images/onepay/viewall.png",
  },
  {
    "id": "001",
    "title" : "Mobile",
    "img": "images/onepay/mobile.png",
  },
  {
    "id": "002",
    "title" : "Gas",
    "img": "images/onepay/gas.png",
  },
  {
    "id": "003",
    "title" : "Electricity",
    "img": "images/onepay/electricity.png",
  },
  {
    "id": "004",
    "title" : "View All",
    "img": "images/onepay/viewall.png",
  },
];
var _cardDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10),
  // border: Border.all(width: 1, color: FsColor.darkgrey),
  boxShadow: [
    BoxShadow(
      color: Color(0xFF818181).withOpacity(0.4),                              
      spreadRadius: 1,
      blurRadius: 4,
      offset: Offset(0, 1), // changes position of shadow
    ),
  ],
);

  void _themeChange() {
    MyApp.themeNotifier.value = 
    MyApp.themeNotifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  @override
  Widget build(BuildContext context) {

     var maxWidth = MediaQuery.of(context).size.width / 4;
  var width = MediaQuery.of(context).size.width;
  var columns = (width ~/ maxWidth) + 1;
  var columnWidth = width / columns;
  var aspectRatio = columnWidth / 100;

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
            Padding(
              padding: EdgeInsets.zero,
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
                  onTap: (){
                    // carditem['id']== '004' ?
                    // Navigator.push(context, 
                    //   MaterialPageRoute(builder: (context) => DomesticStaffCategory()), 
                    // )
                    // :
                    // null;
                  },
                  child: Container(              
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: [

                            Container(
                              height: MediaQuery.of(context).size.width < 374 ?  54 : 64, 
                              width: MediaQuery.of(context).size.width < 374 ?  54 : 64, 
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 1, color: Theme.of(context).primaryColor),
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(context).primaryColor.withOpacity(0.3),                              
                                    spreadRadius: 1,
                                    blurRadius: 4,
                                    offset: Offset(0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset('${carditem["img"]}', fit: BoxFit.contain),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              alignment: Alignment.topCenter,
                              child: Text('${carditem["title"]}', textAlign: TextAlign.center, softWrap: false,
                                style: Theme.of(context).textTheme.titleMedium
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
      ),
    );
  }
}
