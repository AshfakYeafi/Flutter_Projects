import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
 

}

class MyAppState extends State<MyApp>{


  var count = 0;

  void answerQue() {
    setState(() {
      count += 1;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    var question = ["What is your name?", "How are you?","What is your name?", "How are you?","What is your name?", "How are you?"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is tittle"),
        ),
        body: Column(
          children: [
            Text(question[count]),
            RaisedButton(child: Text("This is button 1"), onPressed: answerQue),
            RaisedButton(child: Text("This is button 2"), onPressed: answerQue),
            RaisedButton(child: Text("This is button 3"), onPressed: answerQue),
          ],
        ),
      ),
    );
  }
}

