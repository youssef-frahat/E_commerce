import 'package:e_commerce_app/category/Authentication/view/loginscrean.dart';
import 'package:e_commerce_app/constant/glople.dart';
import 'package:e_commerce_app/customs/custom_button.dart';
import 'package:flutter/material.dart';

class Boarding extends StatelessWidget {
  const Boarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/splash.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomButton(
              child: Text(
                "login",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => navigatepush(const Loginscrean(), context)),
          const SizedBox(height: 20),
          CustomButton(
              child: Text(
                "signup",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                navigatepush(const Placeholder(), context);
              }),
        ]),
      ),
    );
  }
}
