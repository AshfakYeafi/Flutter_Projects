// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback action;
  Answer(this.action);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.red,
        child: Text("This is a Button",
        style: TextStyle(fontSize: 18),
        ), 
      onPressed: action,),
    );
  }
}
