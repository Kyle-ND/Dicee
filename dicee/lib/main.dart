import 'dart:math';

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
      debugShowCheckedModeBanner: false,
      title: 'Dicee App',
      theme: ThemeData(scaffoldBackgroundColor: Colors.teal[300]),
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
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 45.0,
          fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 10.0,
      ),
      body: const mainbody(),
    );
  }
}

class mainbody extends StatefulWidget {
  const mainbody({super.key});

  @override
  State<mainbody> createState() => _mainbodyState();
}

class _mainbodyState extends State<mainbody> {
  int dicenumber = Random().nextInt(6) + 1;
  int rdicenumber = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    dicenumber = Random().nextInt(6) + 1;
                    rdicenumber = Random().nextInt(6) + 1;
                    setState(() {});
                  },
                  child: Image.asset('images/dice$dicenumber.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    rdicenumber = Random().nextInt(6) + 1;
                    dicenumber = Random().nextInt(6) + 1;
                    setState(() {});

                  },
                  child: Image.asset('images/dice$rdicenumber.png'))),
        ],
      ),
    );
  }
}
