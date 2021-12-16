import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Knowledge"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          MyBox("What is a computer?","Computer is a things to calculate and for any other works",
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
          SizedBox(height: 16,),
          MyBox("What is Flutter?","Flutter is a tool to create a mobile application",
          "https://careerswithstem.com.au/wp-content/uploads/2021/01/Should-I-study-computer-science.jpg"),
          SizedBox(height: 16,),
          MyBox("What is Dart?","Dart is the language used in Flutter",
          "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt962a6518612d78db/6131a93da9655d098c7cd8f0/09082021-Episode-3-Act-II-Overview-Article-Banner.jpg"),
          SizedBox(height: 16,),
        ],)
      ),
    );
  }
}

Widget MyBox(String title, String subtitle, String image_url){
    return Container(
      padding: EdgeInsets.all(16),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.purple[200],
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(image_url),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken )
          ) 
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          title, 
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold
          )
        ),
          SizedBox(height: 20,),
        Text(subtitle, style: TextStyle(fontSize: 15,
        color: Colors.white),)
      ],),
    );
  }