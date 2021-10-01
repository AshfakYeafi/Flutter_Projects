// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback action;
  final String ans;
  Answer(this.ans,this.action);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.red,
        child: Text(
          ans.toString(),
          style: TextStyle(fontSize: 18),
        ),
        onPressed: action,
      ),
    );
  }
}
