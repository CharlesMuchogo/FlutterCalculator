// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculator/answer.dart';
import 'package:calculator/equation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Calculator',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Display(),
    );
  }
}

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  Widget tableButton(var lable, Color colortext, double definedHeight) {
    return Container(
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      color: colortext,
      height: definedHeight,
      child: TextButton(
        child: Text(
          lable,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
        ),
        onPressed: null,
      ),
    );
  }

  Widget iconsButton(var colortext, double definedHeight) {
    return Container(
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      color: colortext,
      height: definedHeight,
      child: TextButton(
        child: Icon(Icons.backspace),
        onPressed: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double definedHeight = MediaQuery.of(context).size.height * 0.1;
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Equation('12*12', definedHeight),
              Answer('144', definedHeight),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.60,
          width: double.infinity,
          child: Column(
            children: [
              Table(
                children: [
                  TableRow(children: [
                    tableButton('C', Colors.red, definedHeight),
                    iconsButton(Colors.white, definedHeight),
                    tableButton('÷', Colors.white, definedHeight),
                    tableButton('X', Colors.white, definedHeight),
                  ]),
                  TableRow(children: [
                    tableButton('7', Colors.white, definedHeight),
                    tableButton('8', Colors.white, definedHeight),
                    tableButton('9', Colors.white, definedHeight),
                    tableButton('-', Colors.white, definedHeight),
                  ]),
                  TableRow(children: [
                    tableButton('5', Colors.white, definedHeight),
                    tableButton('5', Colors.white, definedHeight),
                    tableButton('6', Colors.white, definedHeight),
                    tableButton('+', Colors.white, definedHeight),
                  ]),
                  TableRow(children: [
                    tableButton('1', Colors.white, definedHeight),
                    tableButton('2', Colors.white, definedHeight),
                    tableButton('3', Colors.white, definedHeight),
                    tableButton('()', Colors.white, definedHeight),
                  ]),
                  TableRow(children: [
                    tableButton('.', Colors.white, definedHeight),
                    tableButton('0', Colors.white, definedHeight),
                    tableButton('00', Colors.white, definedHeight),
                    tableButton('=', Colors.green, definedHeight),
                  ])
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
