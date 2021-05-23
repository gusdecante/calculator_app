import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override 
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var number1 = 0, number2 = 0, res = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      res = number1 + number2;
    });
  }

  void doSubtraction() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      res = number1 - number2;
    });
  }

  void doMultiplication() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      res = number1 * number2;
    });
  }

  void doDivision() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      res = number1 ~/ number2;
    });
  }

  void doClear() {
    setState(() {
      number1 = 0;
      number2 = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Output: $res",
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold
              )
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 1"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 2"
              ),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("+"),
                  color: Colors.greenAccent,
                  onPressed: doAddition,
                ),
                new RaisedButton(
                  child: new Text("-"),
                  color: Colors.greenAccent,
                  onPressed: doSubtraction,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("*"),
                  color: Colors.greenAccent,
                  onPressed: doMultiplication,
                ),
                new RaisedButton(
                  child: new Text("/"),
                  color: Colors.greenAccent,
                  onPressed: doDivision,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}