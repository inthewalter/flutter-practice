import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BmiState();
  }
}

class BmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar (
        title: new Text("BMI"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ), // AppBar

      body : new Container ( 
        alignment: Alignment.topCenter,
        child: new ListView (
          padding: const EdgeInsets.all(2.0),
          children: <Widget> [
            new Image.asset('images/bmilogo.png',
            height: 85.0,
            width: 75.0,
            ),

            new Container (
              margin: const EdgeInsets.all(3.0),
              height: 245.0,
              width: 290.0,
              color: Colors.grey.shade400,
              child: new Column (
                children: <Widget>[
                  new TextField (
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: 'Age',
                      hintText: 'e.g 34',
                      icon: new Icon(Icons.person_outline),
                    ),
                  ),
                  new TextField (
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: 'Height in feet',
                      hintText: 'e.g 6.5',
                      icon: new Icon(Icons.insert_chart),
                    ),
                  ),
                  new TextField (
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: 'Weight in lbs',
                      hintText: 'e.g 180',
                      icon: new Icon(Icons.line_weight),
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(10.6)),
                  new Container (
                    alignment: Alignment.center,
                    child: new RaisedButton (
                      onPressed: () => debugPrint("Hello"),
                      color: Colors.pinkAccent,
                      child: new Text('Calculate'),
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            new Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("BMI",
                  style: new TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    fontSize: 19.9,
                  ),
                ),
                new Padding(padding: const EdgeInsets.all(5.0)),
                new Text("Overweight: ", 
                  style: new TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    fontSize: 19.9
                  ),
                ),
              ],
            )
          ]
        ),
      )
    ); // Scaffold
  } // Widget build
} // class BmiState