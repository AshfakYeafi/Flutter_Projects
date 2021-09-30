import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String que;
  Question(this.que);

  @override
  Widget build(BuildContext context) {
    return Text(que);
  }
}
