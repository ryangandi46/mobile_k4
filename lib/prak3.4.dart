import 'package:flutter/material.dart';

void main() => runApp(const MyApp(name: 'The Godfather'));

class MyApp extends StatefulWidget {
  const MyApp({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('First app')),
        body: Center(
          child: Text('${widget.name}: $count'),
        ),
      ),
    );
  }
}
