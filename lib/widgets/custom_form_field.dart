import 'package:flutter/material.dart';

InputDecoration customFormField({
  required String labelText,
  Icon? icon,
}) {
  return InputDecoration(
    label: Text(labelText),
    // hintText: "Email Address Enter",
    labelStyle: TextStyle(
      color: Color.fromARGB(255, 240, 127, 105),
      fontWeight: FontWeight.w500,
    ),
    suffixIcon: icon,
    suffixIconColor: Colors.grey[400],
  );
}
