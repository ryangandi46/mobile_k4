import 'package:flutter/material.dart';

void main() => runApp(const MyApp(name: 'The Godfather'));

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.name}) : super(key: key);

  final String name;
  final int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('First app')),
        body: Center(
          child: Text('$name: $count'),
        ),
      ),
    );
  }
}
