import 'dart:async';

import 'package:e_commerce_app/category/Authentication/view/loginscrean.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splachscrean extends StatefulWidget {
  const Splachscrean({super.key});

  @override
  State<Splachscrean> createState() => _SplachscreanState();
  
}


class _SplachscreanState extends State<Splachscrean> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Loginscrean()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splach.jpg"),
            fit: BoxFit.cover,
          )
        ),

        
      )
    );
  }
}