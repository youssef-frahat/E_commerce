import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double width;
  final double height;
  final VoidCallback onPressed;
  CustomButton(
      {super.key,
      required this.child,
      this.color = const Color.fromARGB(255, 213, 174, 1),
      this.width = 200.0,
      this.height = 50.0,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(color),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
      ),
    );
  }
}
