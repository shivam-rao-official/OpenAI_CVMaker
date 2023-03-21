import 'package:flutter/material.dart';

TextFormField openAIFormField(TextEditingController controller, String labelText, {int maxLines = 1}) {
  return TextFormField(
    decoration: InputDecoration(
      labelText: labelText,
      border: const OutlineInputBorder(),
    ),
    maxLines: maxLines,
    controller: controller,
  );
}
