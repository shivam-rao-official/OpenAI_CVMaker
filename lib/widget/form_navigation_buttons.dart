import 'package:flutter/material.dart';

Widget formNavBtn(Function() onPressed, String? btnLabel) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(btnLabel!),
  );
}
