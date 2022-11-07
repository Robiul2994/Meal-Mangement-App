import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  child: TextFormField(
                    style: TextStyle(fontSize: 25),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.man,
                        color: Color.fromARGB(255, 234, 10, 254),
                      ),
                      hintText: "Enter Name",
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
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  child: TextFormField(
                    style: TextStyle(fontSize: 25),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.key,
                        color: Color.fromARGB(255, 234, 10, 254),
                      ),
                      hintText: "Enter 6 digit Password",
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
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  child: TextFormField(
                    style: TextStyle(fontSize: 25),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 234, 10, 254),
                      ),
                      hintText: "Mobile Number",
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
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 60,
                  width: 180,
                  child: ElevatedButton(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "Sign Up Successful",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Color.fromARGB(255, 54, 197, 244),
                          textColor: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16.0);
                      Navigator.pop(context);
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
      ),
    );
  }
}
