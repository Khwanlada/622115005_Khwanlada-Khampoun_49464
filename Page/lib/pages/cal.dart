import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({ Key? key }) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {

  TextEditingController quantity = TextEditingController();
double price = 100;
TextEditingController price2 = TextEditingController();
TextEditingController result = TextEditingController();

  @override
  void initState(){
    super.initState();
    result.text = "Buy X anime boys. Because each anime boy cost X THB, you have to pay X THB";
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/anime.jpg",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Calculate Program",
                    style: TextStyle(
                        fontFamily: "Indie",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[700])),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: quantity,
                  decoration: InputDecoration(
                      labelText: "Anime boy quantity",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),

                TextField(
                  controller: price2,
                  decoration: InputDecoration(
                      labelText: "Anime boy amount",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                    onPressed: () {
                      var cal = double.parse(quantity.text) * double.parse(price2.text);
                      print("Anime boy quantity: ${quantity.text} Total: ${cal} THB");

                      setState(() {
                        result.text = "total: ${cal} THB 😃";
                      });

                    },
                    child: Text("calculate"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xffb74093)),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 20, 50, 20)),
                        textStyle: MaterialStateProperty.all((TextStyle(fontSize: 30))),
                        ),
                        ),
                

                SizedBox(
                  height: 20,
                ),
                Text(result.text,
                    style: TextStyle(
                        fontFamily: "Indie",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[700]))
              ],
            ),
          ),
        ),
      ],
    );
  }
}