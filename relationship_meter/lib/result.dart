// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int point;
  // ignore: use_key_in_widget_constructors
  Result(this.point);

  String get result {
    String numresult = " ";
    if (point >= 90) {
      numresult = "Your Realationship is Picture Perfect.";
    } else if ((point >= 80) && (point < 90)) {
      numresult = "You have a Perfect Relationship.";
    } else if ((point >= 70) && (point < 80)) {
      numresult = "You have a Healthy Relationship.";
    } else if ((point >= 60) && (point < 70)) {
      numresult = "Your Relationship have a good future";
    } else if ((point >= 50) && (point < 60)) {
      numresult = "You have a Casual Relationship";
    } else if ((point >= 40) && (point < 50)) {
      numresult = "You need to improve your relationship";
    } else if ((point >= 20) && (point < 40)) {
      numresult = "You should end this relationship";
    } else {
      numresult = "This not even called a relationship";
    }
    numresult = numresult + "\n" + "Your Score: " + point.toString() + "/100";
    return numresult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        result,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
