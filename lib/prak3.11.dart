import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Timer',
      theme: new ThemeData(
        primaryColor: Colors.grey.shade800,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyTextWidget extends StatefulWidget {
  MyTextWidget({Key? key}) : super(key: key);

  @override
  _MyTextWidgetState createState() => _MyTextWidgetState();
}

class _MyTextWidgetState extends State<MyTextWidget> {
  int secondsToDisplay = 0;

  void _updateSeconds(int newSeconds) {
    setState(() {
      secondsToDisplay = newSeconds;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      secondsToDisplay.toString(),
      textScaleFactor: 5.0,
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  GlobalKey<_MyTextWidgetState> textGlobalKey =
      new GlobalKey<_MyTextWidgetState>();
  int _seconds = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          MyTextWidget(key: textGlobalKey), //just update this widget
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add_circle),
                onPressed: _addPressed,
                iconSize: 150.0,
              ),
              IconButton(
                icon: Icon(Icons.remove_circle),
                onPressed: _decPressed, //()=> print("to be implemented"),
                iconSize: 150.0,
              ),
            ],
          )
        ],
      ),
    );
  }

  void _addPressed() {
    //somehow call _updateSeconds()
    textGlobalKey.currentState!._updateSeconds(_seconds++);
  }

  void _decPressed() {
    //somehow call _updateSeconds()
    textGlobalKey.currentState!._updateSeconds(_seconds--);
  }
}
