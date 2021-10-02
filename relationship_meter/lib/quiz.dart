// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> que;
  final count;
  final Function action;
  // String numCount=(count+1).toString+"/20";

  Quiz({required this.que, required this.count, required this.action});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Question(
          que[count]["question"].toString(),
        ),
        ...(que[count]['answer'] as List<Map<String,Object>>).map((answer) {
          return Answer(answer["text"].toString(),()=>{action(answer["score"])} );
        }).toList(),
        Text((count+1).toString()+"/20",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      ],
    );
  }
}
