import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter test app',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  final Random random = new Random();
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GestureDetector(
        onTap: () {
          setState(() {
            color = new Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1.0);
          });
        },
        child: new Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: color,
          child: new Align(
              alignment: Alignment.center,
              child: Text(
                'Hey there',
                textAlign: TextAlign.end,
              )),
        ),
      ),
    );
  }
}
