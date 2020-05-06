import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget {
  QuoteWidget({Key key, this.quote}) : super();

  final String quote;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[100],
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(20.0),
          bottomRight: const Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 10.0,
            offset: Offset(5.0, 5.0),
          )
        ],
      ),
      padding: EdgeInsets.all(10.0),
      child: Text(
        '"${this.quote}"',
        style: TextStyle(
          fontFamily: 'Aladin',
          fontSize: 28.0,
          color: Colors.black87,
        ),
      ),
    );
  }
}
