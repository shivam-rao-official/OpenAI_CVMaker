import 'package:flutter/material.dart';
import 'package:portfolio_maker_app/services/generateCV.dart';

MaterialButton generateCVButton(
    BuildContext context, TextEditingController controller) {
  return MaterialButton(
    onPressed: () => generateCV(controller.text),
    color: const Color(0xff255fb6),
    elevation: 10,
    height: 60,
    minWidth: MediaQuery.of(context).size.width - 50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    child: const Text(
      "GENERATE CV",
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
    ),
  );
}
