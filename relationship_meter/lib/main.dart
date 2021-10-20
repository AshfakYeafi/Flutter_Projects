import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
import './test_code.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var count = 0;
  var point = 0;
  

var que = [
    {
      'question': 'I have a comfortable relationship with himor her.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'He or She is physically attractive to me.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I am commited to maintaining my relationship with him/her.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'When I am with him or her, I can be myself without strain.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'He or she is very important to me regardless of emotion or lack of emotion at the moment',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'We communicate well.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'We support each other emotionally.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I feel that we understand each other.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I can not imagine life without him or her.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I feel close to him even when we do not talk constantly.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I dont think that another persion can make me as happy as he or she dose.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I am proud to be seen together with him/her.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I expect my love to last even if he or she were sick or if his or her physical appearence should change.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I respect his or her mental ability.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'We understand each other.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I am happy and satisfied with the he or she shows affection for me.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I would rather be with him or her than with anyone else.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I am organizing my long-range plans with him or her in mind.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'Our disagrements results in a better understanding of each other.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
    {
      'question': 'I can sacrefice my career for him/her.',
      "answer": [
        {"text": "Very False", "score": 1},
        {"text": "False", "score": 2},
        {"text": "Undecided", "score": 3},
        {"text": "True", "score": 4},
        {"text": "Very True", "score": 5}
      ],
    },
  ];

  void action(int a) {
    point += a;
    setState(() {
      count += 1;
    });
    print(point);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Relationship Meter."),
          backgroundColor: Colors.red,
        ),
        body: (count < que.length)
            ? Quiz(
                count: count,
                action: action,
                que: que,
              )
            : Result(point),
      ),
    );
  }
}
