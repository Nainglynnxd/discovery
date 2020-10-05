import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Discovery',
      home: new Home(),
      theme: new ThemeData(primaryColor: Colors.white),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  Map<String, dynamic> data = {
    'one': [
      'Bars & hotel',
      'cool_beer.png',
      '42 places',
    ],
    'two': [
      'Free Dining',
      'server.png',
      '15 places',
    ],
    'three': [
      'Fast Foods',
      'fastfood.png',
      '18 places',
    ],
    'four': [
      'Fast Foods',
      'fastfood.png',
      '18 places',
    ],
    'five': [
      'Fast Foods',
      'fastfood.png',
      '18 places',
    ],
    'six': [
      'Fast Foods',
      'fastfood.png',
      '18 places',
    ],
  };
  final List<String> url = [
    'cool_beer.png',
    'serve.png',
    'fastfood.png',
    'pizza.png',
    'location.png',
    'coffee.png',
  ];

  final List<String> desc = [
    'Bars & hotel',
    'Free Dining',
    'Fast Foods',
    'Featured Foods',
    'Nearby',
    'Cafes',
  ];

  final List<String> avail = [
    '42 places',
    '15 places',
    '30 places',
    '16 places',
    '20 places',
    '18 places',
  ];

  @override
  Widget build(BuildContext context) {
    var gridView = new GridView.builder(
        itemCount: 6,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 0),
            child: new Card(
              elevation: 5.0,
              child: new Container(
                alignment: Alignment.center,
                child: new Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 60,
                      width: 60,
                      image: AssetImage('assets/${this.url[index]}'),
                      color: null,
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Text('${this.desc[index]}'),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('${this.avail[index]}')
                  ],
                ),
              ),
            ),
          );
        });

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Discovery"),
      ),
      body: gridView,
    );
  }
}
