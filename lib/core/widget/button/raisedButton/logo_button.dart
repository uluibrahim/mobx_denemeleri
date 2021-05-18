import 'package:flutter/material.dart';

Widget buildLogoButton(IconData icon) {
  return RaisedButton(
    elevation: 15,
    color: Colors.white,
    onPressed: () {},
    child: ClipOval(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Icon(
          icon,
          size: 50,
        ),
      ),
    ),
    shape: CircleBorder(),
  );
}
