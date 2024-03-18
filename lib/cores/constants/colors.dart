import 'package:flutter/material.dart';

class AppPalete {
  static const elevatedLoginButton = LinearGradient(colors: [
    Color.fromARGB(240, 77, 43, 26),
    Color.fromARGB(
      240,
      167,
      116,
      90,
    )
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);
  static const white = Colors.white;
  static const black = Colors.black;
  static const brown = Colors.brown;
  static const submitButton = LinearGradient(colors: [
    Color.fromARGB(255, 45, 133, 47),
    Color.fromARGB(255, 63, 164, 43)
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);
  static const lowOpacityWhite = Color.fromARGB(33, 255, 255, 255);
  static const loginGradient = LinearGradient(colors: [
    Color.fromARGB(0, 80, 114, 235),
    Color.fromARGB(
      51,
      207,
      123,
      75,
    )
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);

  static const transparent = Colors.transparent;
}

// rgba(1,77, 43, 26)
// rgba(1,167, 116, 90,)