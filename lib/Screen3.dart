import 'package:flutter/material.dart';


class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);
  @override
  State<screen3> createState() => _screen3();
}

void main() {
  runApp(
    MaterialApp(
      home: screen3(),
    ),
  );
}

class _screen3 extends State<screen3> {
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: ListView(children: [
          SizedBox(
            height: 10,
          ),
          Image(
            image: NetworkImage(
                'https://img.freepik.com/free-vector/elegant-certificate-template_23-2148573331.jpg?w=2000'),
            height: 500,
            width: 500,
          ),
          Container(
            padding: EdgeInsets.all(3.0),
            child: Text(
              "You Have Successfully Completed Hybrid Mobile App Developement Course.",
              style: TextStyle(fontWeight: FontWeight.w300),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            child: Text(
              "INSTRUCTOR NAME",
              style: TextStyle(fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            child: Text("Pankaj Kapoor",
                style:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.blue)),
          )
        ]),
      ),
    )));
  }
}