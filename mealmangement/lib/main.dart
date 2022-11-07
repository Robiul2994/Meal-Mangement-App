import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealmangement/login.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: myApp()));
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/app.jpg"), fit: BoxFit.fill)),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset("asset/food.png"),
                  ),
                ),
                Container(
                  child: Text(
                    "Meal",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Hanalei',
                      color: Color.fromARGB(255, 255, 136, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Management",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Hanalei',
                      color: Color.fromARGB(255, 255, 136, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 350),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      child: Text(
                        "GO→",
                        style: TextStyle(
                          color: Color.fromARGB(255, 57, 3, 34),
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => login(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 60, 245, 239)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
