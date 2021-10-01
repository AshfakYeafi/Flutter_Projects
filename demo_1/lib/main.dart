import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var count = 0;
  void action() {
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
      "Do you like me?",
      "Fuck you"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is a tittle"),
        ),
        body: Column(
          children: [
            Question(que[count]),
            Answer(action),
            Answer(action),
            Answer(action),
          ],
        ),
      ),
    );
  }
}