import 'package:flutter/material.dart';
import 'package:tfd_app/quotes_widgets/my_quote_body.dart';

void main() => runApp(MyApp());

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
    return MyQuoteBody();
  }
}
