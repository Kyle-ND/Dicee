import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.red),
      home: const dicepage(),
    );
  }
}

class dicepage extends StatelessWidget {
  const dicepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dicee",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red[500],
        centerTitle: true,
        elevation: 10.0,
      ),
      body: mainbody(),
    );
  }

  Widget mainbody() {
    var diceImageNum = 5;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () => print("left button"),
                  child: Image.asset('images/dice$diceImageNum.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () => print("right button"),
                  child: Image.asset('images/dice2.png'))),
        ],
      ),
    );
  }
}
