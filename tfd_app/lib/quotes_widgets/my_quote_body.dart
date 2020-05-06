import 'package:flutter/material.dart';
import 'package:tfd_app/common_widgets/my_date.dart';

import 'my_author.dart';
import 'my_quote.dart';

class MyQuoteBody extends StatelessWidget {
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
