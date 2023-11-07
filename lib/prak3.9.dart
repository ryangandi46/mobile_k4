// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData.light().copyWith(
//         primaryColor: Color(0xFF090C22),
//         scaffoldBackgroundColor: Color(0xFF090C22),
//         appBarTheme: AppBarTheme(
//           color: Colors.red[900],
//           textTheme: TextTheme(
//             headline6: TextStyle(
//               fontSize: 24.0,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//         textTheme: TextTheme(
//           bodyText2: TextStyle(
//             fontSize: 22.0,
//             fontWeight: FontWeight.w600,
//           ),
//           subtitle1: TextStyle(
//             fontSize: 20.0,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
        appBarTheme: AppBarTheme(
          color: Colors.red[900],
          toolbarTextStyle: TextTheme(
            headline6: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
            ),
          ).bodyText2,
          titleTextStyle: TextTheme(
            headline6: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
            ),
          ).headline6,
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
          ),
          subtitle1: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movies',
        ),
      ),
      body: MovieListView(),
    );
  }
}

class MovieListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        MovieTile(movieName: 'The Godfather'),
        MovieTile(movieName: 'The Notebook'),
      ],
    );
  }
}

class MovieTile extends StatefulWidget {
  final String movieName;
  MovieTile({required this.movieName});

  @override
  _MovieTileState createState() => _MovieTileState();
}

class _MovieTileState extends State<MovieTile> {
  bool _isFavorite = true; //false;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          widget.movieName,
          style: (_isFavorite)
              ? TextStyle(color: Colors.white)
              : TextStyle(color: Colors.blue),
        ),
        trailing: IconButton(
          icon: (_isFavorite)
              ? Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              : Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
          onPressed: _toggleFavorite,
        ));
  }
}
