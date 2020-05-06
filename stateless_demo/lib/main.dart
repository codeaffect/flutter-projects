import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Stateless Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new HomeWidget(title: 'Cars'));
  }
}

// Old home page with out listview.
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new Column(
        children: <Widget>[
          CarWidget("BMW", "M3",
              "https://th.bing.com/th/id/OIP.NgVtYbWYUW-sGBxhvrUYPwHaFE?w=240&h=164&c=7&o=5&pid=1.7"),
          CarWidget("Nissan", "GTR",
              "https://th.bing.com/th/id/OIP.zfiivy6tATGkuaujH983cAHaDt?w=300&h=150&c=7&o=5&pid=1.7"),
          CarWidget("Nissan", "Sentra",
              "https://th.bing.com/th/id/OIP.OcEvqybCXLtDMP08PHm9XAHaEi?w=274&h=168&c=7&o=5&pid=1.7"),
          CarWidget("Honda", "CRV",
              "https://th.bing.com/th/id/OIP.cQqxdcAjSx52dWMKuAeUAQHaE8?w=254&h=169&c=7&o=5&pid=1.7"),
        ],
      ),
    );
  }
}

class CarWidget extends StatelessWidget {
  CarWidget(this.make, this.model, this.imageSrc) : super();
  final String make;
  final String model;
  final String imageSrc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
          children: <Widget>[Text(make), Text(model), Image.network(imageSrc)]),
    );
  }
}

// New home page with listview.
class HomeWidget extends StatelessWidget {
  HomeWidget({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new ListView(children: <Widget>[
        CarBorderWidget("BMW", "M3",
            "https://th.bing.com/th/id/OIP.NgVtYbWYUW-sGBxhvrUYPwHaFE?w=240&h=164&c=7&o=5&pid=1.7"),
        CarBorderWidget("Nissan", "GTR",
            "https://th.bing.com/th/id/OIP.zfiivy6tATGkuaujH983cAHaDt?w=300&h=150&c=7&o=5&pid=1.7"),
        CarBorderWidget("Nissan", "Sentra",
            "https://th.bing.com/th/id/OIP.OcEvqybCXLtDMP08PHm9XAHaEi?w=274&h=168&c=7&o=5&pid=1.7"),
        CarBorderWidget("Honda", "CRV",
            "https://th.bing.com/th/id/OIP.cQqxdcAjSx52dWMKuAeUAQHaE8?w=254&h=169&c=7&o=5&pid=1.7"),
      ]),
    );
  }
}

class CarBorderWidget extends StatelessWidget {
  CarBorderWidget(this.make, this.model, this.imageSrc) : super();
  final String make;
  final String model;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(children: <Widget>[
            Text('$make - $model', style: TextStyle(fontSize: 24.0)),
            Image.network(imageSrc)
          ]),
        ),
      ),
    );
  }
}
