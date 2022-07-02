import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class newproject extends StatelessWidget {
  const newproject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 200)),
            Text("TRAINING",
                style: TextStyle(
                    color: Color.fromARGB(255, 29, 136, 223),
                    fontWeight: FontWeight.bold,
                    fontSize: 34)),
            Padding(padding: EdgeInsets.only(top: 50)),
            Center(
              child: Image(image: AssetImage('https://i.pinimg.com/originals/62/ae/dd/62aedda6f003791ab3d66f8701f59d08.png')),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Container(
                width: 250,
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Get Started")))
          ],
        ),
      ),
    );
  }
}