import 'package:flutter/material.dart';

Future navigatepush(Widget widget, BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ),
  );
}

Future navigatepushReplacement(Widget widget, BuildContext context) async {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

Future navigatepop(BuildContext context) async {
  Navigator.pop(context);
}
