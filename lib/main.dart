import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Laptop'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First app')),
        body: Column(children: [
          Container(
              margin: EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () => setState(() => _products.add('PC')),
                  child: Text('Hello World'))),
          Column(
              children: _products
                  .map((butir) => Card(
                        child: Column(
                          children: [Text(butir)],
                        ),
                      ))
                  .toList()),
        ]),
      ),
    );
  }
}
