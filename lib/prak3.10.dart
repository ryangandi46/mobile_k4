import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// ignore: must_be_immutable
class MyTextDynWidget extends StatefulWidget {
  int ankaAwal;
  MyTextDynWidget({Key? key, required this.ankaAwal}) : super(key: key);

  @override
  _MyTextWidgetState createState() => _MyTextWidgetState(ankaAwal);
}

class _MyTextWidgetState extends State<MyTextDynWidget> {
  int angkaToDisplay;
  _MyTextWidgetState(this.angkaToDisplay); // constructor

  void _updateAngka(int newAngka) {
    setState(() {
      angkaToDisplay = newAngka;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      angkaToDisplay.toString(),
      textScaleFactor: 5.0,
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  GlobalKey<_MyTextWidgetState> textGlobalKey =
      new GlobalKey<_MyTextWidgetState>();
  int _angka = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            MyTextDynWidget(
              key: textGlobalKey,
              ankaAwal: _angka,
            ), //just upd this widget
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addPressed,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void _addPressed() {
    //somehow call _updateAngka()
    textGlobalKey.currentState!._updateAngka(++_angka);
  }
}
