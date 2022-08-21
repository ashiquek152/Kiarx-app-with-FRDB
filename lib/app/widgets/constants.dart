import 'package:flutter/material.dart';

class Constants {
  static const primary = Color.fromRGBO(41, 40, 40, 0.993);
  static const orange = Color.fromARGB(255, 255, 102, 0);
  static const white = Colors.white;


  static InputDecoration inputDecoration({required String hintText}) {
    return  InputDecoration(
      hintText: hintText,
  border: const UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 8, 224, 240), width: 2),
  ),
  errorBorder: const UnderlineInputBorder(
    borderSide: BorderSide(color:Constants.orange, width: 2),
  ),
  focusedBorder: const UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 8, 224, 240), width: 2),
  ),
  disabledBorder: const UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 8, 224, 240), width: 2),
  ),
  enabledBorder: const UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 8, 224, 240), width: 2),
  ),
);
  }
}
