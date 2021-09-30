import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("This is tittle"),),
        body:Column(children: [
          RaisedButton(child: Text("This is button 1"), onPressed: null),
          RaisedButton(child: Text("This is button 2"), onPressed: null),
          RaisedButton(child: Text("This is button 3"), onPressed: null),
        ],) ,
        ),
    );
  }
}