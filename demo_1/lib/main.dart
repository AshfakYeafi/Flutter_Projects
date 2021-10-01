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
  var point = 0;
  void action() {
    setState(() {
      count += 1;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    var que = [
      {
        'question': 'This is que 1',
        "answer": ["Ans 1-1", "Ans 1-2", "Ans 1-3"],
        "right": 'Ans 1-1'
      },
      {
        'question': 'This is que 2',
        "answer": ["Ans 2-1", "Ans 2-2", "Ans 2-3"],
        "right": 'Ans'
      },
      {
        'question': 'This is que 3',
        "answer": ["Ans 3-1", "Ans 3-2", "Ans 3-3"],
        "right": 'Ans'
      },
      {
        'question': 'This is que 4',
        "answer": ["Ans 4-1", "Ans 4-2", "Ans 4-3"],
        "right": 'Ans'
      },
      {
        'question': 'This is que 5',
        "answer": ["Ans 5-1", "Ans 5-2", "Ans 5-3"],
        "right": 'Ans'
      },
      {
        'question': 'This is que 6',
        "answer": ["Ans 6-1", "Ans 6-2", "Ans 6-3"],
        "right": 'Ans'
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is a tittle"),
        ),
        body: Column(
          children: [
            Question(
              que[count]["question"].toString(),
            ),
            ...(que[count]['answer'] as List<String>).map((answer) {
              return Answer(answer, action);
            }).toList()
          ],
        ),
      ),
    );
  }
}
