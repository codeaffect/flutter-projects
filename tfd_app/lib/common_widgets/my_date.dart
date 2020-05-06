import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/*---------- Date Widget ----------------*/
class DateWidget extends StatelessWidget {
  DateWidget({Key key}) : super();
  final String stDate = new DateFormat.yMMMMd('en_US').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      child: new Text(
        stDate,
        style: TextStyle(
          fontFamily: 'Aladin',
          fontSize: 24.0,
          color: Colors.black87,
        ),
      ),
    );
  }
}
