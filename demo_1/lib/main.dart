import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var count = 0;

  void answerQue() {
    setState(() {
      count += 1;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    var que = [
      "What is your name?",
      "Where do you live?",
      "Will you be my gf?",
      "Will you be my gf_2?",
      "Will you be my gf_3?"
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is tittle"),
        ),
        body: Column(
          children: [
            Text(que[count]),
            RaisedButton(child: Text("Button 1"), onPressed: answerQue),
            RaisedButton(child: Text("Button 2"), onPressed: answerQue),
            RaisedButton(child: Text("Button 3"), onPressed: answerQue),
          ],
        ),
      ),
    );
  }
}
