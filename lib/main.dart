import 'package:flutter/material.dart';
import 'view/sign_up/view/sign_up_view.dart';
import 'view/sign_in/view/sign_in_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInView(),
    );
  }
}
