import 'package:e_commerce_app/splash/splachscrean.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: Store(),),
  ));
}

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
