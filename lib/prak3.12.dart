import 'package:flutter/material.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: StarTile(
                    name: 'Oeschinen Lake Campground',
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    // )
                  ),
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.bold,
                  // ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          // Icon(
          //   Icons.star,
          //   color: Colors.red[500],
          // ),
          // Icon(
          //   Icons.star_border,
          //   color: Colors.red[500],
          // ),
          Text('$_toggleStar'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class StarTile extends StatefulWidget {
  final String name;
  StarTile({required this.name});

  @override
  _StarTileState createState() => _StarTileState();
}

class _StarTileState extends State<StarTile> {
  bool _isStar = true; //false;
  int _starCount = 41; //jumlah bintang awal

  void _toggleStar() {
    setState(() {
      _isStar = !_isStar;
      _starCount += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          widget.name,
          // style: (_isFavorite)
          //             TextStyle(fontWeight: FontWeight.bold)
        ),
        trailing: IconButton(
          icon: (_isStar)
              ? Icon(
                  Icons.star,
                  color: Colors.red[500],
                )
              : Icon(
                  Icons.star_border,
                  color: Colors.red[500],
                ),
          // Text('$_starCount'),
          onPressed: _toggleStar();
        ));
  }
}
