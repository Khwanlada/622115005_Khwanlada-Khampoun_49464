import 'package:cal/pages/cal.dart';
import 'package:cal/pages/contact.dart';
import 'package:cal/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage()
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final tabs = [HomePage(),CalculatePage(),CantactPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Color(0xfff07847), title: Text("Calculate App"),),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Homepage"),
            BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Calculate"),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Contact Me"),
          ],
          onTap: (index){
            setState(() {
              print(index);
              _currentIndex = index;
            });
          },
        ),
      );
  }
}
