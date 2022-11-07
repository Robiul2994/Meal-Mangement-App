import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealmangement/registration.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  child: Text(
                    "Wellcome",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 136, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'Hanalei'),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "to",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 136, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Hanalei'),
                ),
              ),
              Container(
                child: Text(
                  "Meal Mangement",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 136, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      fontFamily: 'Hanalei'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  child: TextFormField(
                    style: TextStyle(fontSize: 25),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 234, 10, 254),
                      ),
                      hintText: "Enter Email Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 6, 253, 228),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: TextFormField(
                    style: TextStyle(fontSize: 25),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.key,
                        color: Color.fromARGB(255, 234, 10, 254),
                      ),
                      hintText: "Enter Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 6, 253, 228),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 60,
                  width: 180,
                  child: ElevatedButton(
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 60, 245, 239)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Row(
                  children: [
                    Text(
                      "Don't have Account ",
                      style: TextStyle(fontSize: 30),
                    ),
                    Container(
                      height: 35,
                      width: 120,
                      child: ElevatedButton(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => signup(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 60, 245, 239)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
