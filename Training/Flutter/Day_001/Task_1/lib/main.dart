/*
 *  Author: Jovial Joe Jayarson 
 *  email:  jovial7joe33@gmail.com
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String msg = 'Reset';

  void _incrementCounter() {
    setState(() {
      msg = 'Incrementing';
      _counter++;
    });
  }

  void _decrementCounter(){
    setState((){
      msg = 'Decrementing';
      _counter--;
    });
  }
  void _resetCounter(){
    setState((){
      msg = 'Reset';
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The counter is $msg...',
              textAlign: TextAlign.center,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[
        RaisedButton(
          elevation: 10.0,
          onPressed: () {_incrementCounter();},
          shape: CircleBorder(),
          color: Colors.red,
          child: Icon(
              Icons.arrow_upward,
              color: Colors.white,
            ),
        ),
        RaisedButton(
          elevation: 10.0,
          onPressed: () {_decrementCounter();},
          shape: CircleBorder(),
          color: Colors.blue,
          child: Icon(
            Icons.arrow_downward,
            color: Colors.white,
          ),
        ),
      ],
      floatingActionButton: FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'Reset',
        backgroundColor: Colors.black87,
        child: Text(
          "Reset",
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    );
  } // Widget build
} // _MyHomePageState