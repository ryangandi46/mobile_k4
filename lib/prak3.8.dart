import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BlueSquare(size: 50),
    );
  }
}

class BlueSquare extends StatefulWidget {
  final double size;
  const BlueSquare({Key? key, required this.size}) : super(key: key);

  @override
  State<BlueSquare> createState() => _BlueSquareState();
}

class _BlueSquareState extends State<BlueSquare> {
  int clicks = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          clicks = clicks + 1;
        });
        // print(clicks);
      },
      child: Container(
        height: widget.size,
        width: widget.size,
        color: Colors.blue,
        child: Center(child: Text('$clicks')),
      ),
    );
  }
}
