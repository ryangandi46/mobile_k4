import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('First app')),
        body: const Center(
          child: Movie(
            name: 'The Godfather',
          ),
        ),
      ),
    );
  }
}

class Movie extends StatelessWidget {
  const Movie({Key? key, required this.name}) : super(key: key);

  final String name;
  final int count = 0;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name: $count',
    );
  }
}
