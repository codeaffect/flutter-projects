import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  MyBody({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[Expanded(child: AppBar(title: Text('Column1')))],
          )),
          Expanded(
            child: Row(
              // <Widget> is the type of items in the list.
              children: <Widget>[
                // Expanded expands its child to fill the available space.
                Expanded(
                  child: title,
                ),
                Expanded(child: Text('New'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Thought For The Day'),
      ),
      body: MyBody(
        title: Text('Energy is everything!'),
      ),
    ));
  }
}

void main() => runApp(MyApp());
