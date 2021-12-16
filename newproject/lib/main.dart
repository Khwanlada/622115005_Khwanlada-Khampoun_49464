import 'package:flutter/material.dart';
import 'package:newproject/pages/home.dart';

void main(List<String> atgs) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Computer's Today",
      home: HomePage(),
    );
  }
}