import 'package:flutter/material.dart';


///Created on Android Studio Canary Version
///User: Gagandeep
///Date: 01-05-2019
///Time: 19:57
///Project Name: flutter_gesture

class MakeItRain extends StatefulWidget {
  var title;
  var appAccent;


  MakeItRain(this.title, this.appAccent);

  @override
  State<StatefulWidget> createState() {
    return MakeItRainState(title, appAccent);
  }
}

class MakeItRainState extends State<MakeItRain> {
  var title;
  var appAccent;
  var moneyColor = Colors.pinkAccent;
  num _moneyCounter = 0;

  rainMoney(){
   setState(() {
     _moneyCounter += 100;
     if(_moneyCounter>1000)
       moneyColor = Colors.redAccent[700];
   });
  }

  MakeItRainState(this.title, this.appAccent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: appAccent,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(
              "Get Rich",
              style: TextStyle(
                color: appAccent,
                fontWeight: FontWeight.w400,
                fontSize: 29.9
              ),
            ),
          ),
          Expanded( //match parent inside row/column/flex
            child: Center(
              child: Text(
                "\$$_moneyCounter ",  //variable
                style: TextStyle(
                  fontSize: 46.9,
                  fontWeight: FontWeight.w800,
                  color: _moneyCounter >2000? Colors.red[900] :  appAccent ,  //if money > 200 then color is red
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: FlatButton(
                textColor: Colors.white,
                child: Text("Let it Rain!"),  //button text
                onPressed: () {
                  rainMoney();  //function called when button is pressed
                  },
                highlightColor: appAccent[200], //the color of button on pressing
                splashColor: appAccent[100], //color of ripple
                padding: EdgeInsets.all(8.0),
                color: appAccent[200],  //App accents is in array format because its data type is "Colors"

              ),
            ),
          )
        ],
      ),
    );
  }
}