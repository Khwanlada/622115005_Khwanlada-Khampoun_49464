import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorBrightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomepage(),
    ); 
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({ Key? key }) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

Widget buildBottomIconButton(IconData icon, Color color){
  return IconButton(icon: Icon(icon), color: color
    , onPressed: () {} , ) ;
}

Widget buildListofTweets(){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Container(
        margin: const EdgeInsets.all(10),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://portalpopline.com.br/wp-content/uploads/2021/12/v-bts-2-1.jpg'),
         ),
      ),
      tweetBody(),
      tweetButtons()
    ],
  );
}

Widget tweetBody(){
  return Expanded(
    child: Column(
      children: [
    Row(children: [
      Container(
        margin: const EdgeInsets.only(right: 5.0),
        child: Text('Tahyung',
        style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.bold
        ),
      ),
      ),
      Text('@thv 3minutes ago ',
      style: TextStyle(color: Colors.grey
      ),
    ),
    Text("\n"+"\n"+"\n"+"\n"+"Hello Twitter!"),
    Spacer(),
    IconButton(icon: Icon(
      Icons.arrow_drop_down
    ), onPressed: () {},),
    ],
    )
  ],));
}



Widget tweetText(String text) {
    return Text(
      text,
      overflow: TextOverflow.clip,
      maxLines: 1,
      softWrap: true,
    );
  }

 Widget tweetIconButton(IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16.0,
          color: Colors.black45,
        ),
      ],
    );
  }
  Widget tweetButtons() {
    return Container(
      margin: const EdgeInsets.only(top: 80.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tweetIconButton(Icons.comment),
          tweetIconButton(Icons.repeat),
          tweetIconButton(Icons.favorite),
          tweetIconButton(Icons.share),
        ],
      ),
    );
  }

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: Container(
            margin: const EdgeInsets.all(10),
            child: CircleAvatar(backgroundImage: AssetImage('c.png')
            ),
          ),
          title: Center(child: Text(
            'Home',
            style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold, ),),
            ),
        ),
        body:buildListofTweets(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              buildBottomIconButton(Icons.home, Colors.blue),
              buildBottomIconButton(Icons.search, Colors.black45),
              buildBottomIconButton(Icons.notifications, Colors.black45),
              buildBottomIconButton(Icons.mail_outline, Colors.black45),
            ],
          ) ,
        ),
      ),
    );
  }
}




      
