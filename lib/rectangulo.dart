import 'package:flutter/material.dart';

class Rectangulo extends StatefulWidget {
  State createState() => new HomePageState();
}

class HomePageState extends State<Rectangulo> {
  var baseAvg = 0, alturaAvg = 0, areaAvg = 0;

  final TextEditingController avg1 = new TextEditingController(text: "");
  final TextEditingController avg2 = new TextEditingController(text: "");

  void doArea() {
    setState(() {
      baseAvg = int.parse(avg1.text);
      alturaAvg = int.parse(avg2.text);

      areaAvg = baseAvg * alturaAvg;
    });
  }

  void doClear() {
    setState(() {
      avg1.text = "";
      avg2.text = "";
    });
  }

  Widget build(BuildContext contex) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("area del rectangulo"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Area: $areaAvg",
                style: new TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(labelText: "base: "),
              controller: avg1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(labelText: "base: "),
              controller: avg2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 50.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("calcular"),
                  color: Colors.blueGrey,
                  onPressed: doArea,
                ),
                new MaterialButton(
                  child: new Text("borrar"),
                  color: Colors.blueGrey,
                  onPressed: doClear,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
