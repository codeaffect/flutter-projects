import 'package:flutter/material.dart';

import 'common_widgets/my_date.dart';
import 'quotes_widgets/my_author.dart';
import 'quotes_widgets/my_quote.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        title: Text(
          'Thought For The Day',
          style: new TextStyle(
            fontFamily: "Aladin",
            fontSize: 30,
            color: Colors.grey[200],
          ),
        ),
      ),
      body: MyBody(),
    ));
  }
}

class MyBody extends StatelessWidget {
  MyBody({Key key}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(children: <Widget>[
        DateWidget(),
        QuoteWidget(
            quote:
                "Age is an issue of mind over matter. If you don't mind, it doesn't matter."),
        AuthorWidget(author: 'Mark Twain'),
      ]),
    ));
  }
}

void main() => runApp(MyApp());
