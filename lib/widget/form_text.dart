import 'package:flutter/material.dart';

Widget formLabel(String fieldLabel, double fontSize) {
  return Text(
    fieldLabel,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    ),
  );
}
