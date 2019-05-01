import 'package:flutter/material.dart';
import 'package:flutter_gesture/ui/widgets.dart';


 var title = "Money App";
 var appAccent = Colors.pinkAccent;
void main() => runApp(MyApp(title, appAccent));

class MyApp extends StatelessWidget {

  var title;
  var appAccent;


  MyApp(this.title, this.appAccent);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: MakeItRain(title, appAccent)
    );
  }
}

class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return null;
  }
}




