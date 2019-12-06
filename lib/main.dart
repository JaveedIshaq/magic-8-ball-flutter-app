import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text(
              "Ask Me Anything",
            style: TextStyle(
                fontSize: 30.0
              ),
            ),
            backgroundColor: Colors.blue[900],
          ),
          body: MagicApp(),
        ),
      ),
    );


class MagicApp extends StatefulWidget {
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {

  int ballImageNumber = 2;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         FlatButton(
           onPressed: () {
             setState(() {
               ballImageNumber = Random().nextInt(5) + 1;
             });

             print("ball image number is $ballImageNumber");
           },
           child: Image.asset('images/ball$ballImageNumber.png'),
         )

        ],
      ),
    );
  }
}
