import 'package:flutter/material.dart';

@override
Widget buildSignInFormField(BuildContext context, String hintText,
    String labelText, TextInputType inputType, bool obscureText) {
  return TextFormField(
    obscureText: obscureText, 
    keyboardType: inputType,
    decoration: InputDecoration(
      hintText: hintText,
      labelText: labelText,
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      errorBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
    ),
  );
}
