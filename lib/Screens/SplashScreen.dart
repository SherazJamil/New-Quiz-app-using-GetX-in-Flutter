import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'WelcomeScreen.dart';

class Splashscreen extends StatelessWidget {
  Splashscreen({Key? key}) : super(key: key);

  final timer = Timer(
    const Duration(seconds: 4),
    () {
      Get.to(Welcome());
      // Navigate to your favorite place
    },
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.amber, Colors.deepOrange])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Align(
              alignment: Alignment.center,
              child: Text(
                'QuiZee',
                style: TextStyle(
                  fontSize:40,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}