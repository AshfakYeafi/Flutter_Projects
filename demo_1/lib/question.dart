import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String que;
  Question(this.que);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      margin: EdgeInsets.all(50),
      child: Text(
        que,style: TextStyle(fontSize: 28,color: Colors.brown),
        textAlign: TextAlign.center,
        
    ),
    );
  }
}
