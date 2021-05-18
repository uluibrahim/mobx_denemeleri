import 'package:flutter/material.dart';

Divider greyDivider(BuildContext context) {
  return Divider(
    thickness: 1,
    color: Colors.grey,
    indent: MediaQuery.of(context).size.width * 0.04,
    endIndent: MediaQuery.of(context).size.width * 0.04,
  );
}
