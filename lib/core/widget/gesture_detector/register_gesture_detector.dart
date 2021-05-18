import 'package:flutter/material.dart';

GestureDetector buildGestureDetectorRegister(BuildContext context,String text) {
  return GestureDetector(
    onTap: () {},
    child: Text(text,style: Theme.of(context).textTheme.subtitle2.copyWith(color:Colors.blue)),
  );
}
