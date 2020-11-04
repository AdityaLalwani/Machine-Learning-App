import 'package:flutter/material.dart';

import '../../colors.dart';

class Carde extends StatelessWidget {
  final String head;

  final String body;
  Carde(
      {this.head = 'Birth of Universe',
      this.body = "Text which goes inside the body appears over here."});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: f9,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ExpansionTile(
          //gif: gif,
          title: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  head,
                  style: TextStyle(
                    fontFamily: 'BalooBhai',
                    fontSize: 22,
                    color: f1,
                  ),
                ),
              ],
            ),
          ),
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7),
              child: Text(body,
                  style: TextStyle(
                      fontFamily: 'BalooBhai', fontSize: 19, color: f4)),
            )
          ],
        ),
      ),
    );
  }
}
