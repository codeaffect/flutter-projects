import 'package:flutter/material.dart';
import 'package:tfd_app/common_widgets/my_painter.dart';

class AuthorWidget extends StatelessWidget {
  AuthorWidget({Key key, this.author}) : super();

  final String author;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.centerRight,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomPaint(
                size: Size(10, 40),
                painter: MyPainter(),
              ),
              Text(
                ' ${this.author} ',
                style: TextStyle(
                  fontFamily: 'Aladin',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]));
  }
}
