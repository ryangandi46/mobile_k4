import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('First app')),
        body: Center(
          child: MovieName(
            name: 'The Godfather',
          ),
        ),
      ),
    );
  }
}

class MovieName extends StatefulWidget {
  // const Movie({Key? key, required this.name}) : super(key: key);

  final String name;
  MovieName({required this.name});

  @override
  _MovieNameState createState() => _MovieNameState();
}

class _MovieNameState extends State<MovieName> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        '${widget.name}: ${count}',
      ),
      onTap: () {
        setState(() {
          ++count;
        });
      },
    );
  }
}
