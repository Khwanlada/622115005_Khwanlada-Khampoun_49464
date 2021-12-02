import 'package:flutter/material.dart';

class CantactPage extends StatefulWidget {
  //const CantactPage({ Key? key }) : super(key: key);

  @override
  _CantactPageState createState() => _CantactPageState();
}

class _CantactPageState extends State<CantactPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [
              Text("Khwanlada Khampoun"),
              Text("@HOME: My Room")
            ],
          ),
        )
      ],
    );
  }
}