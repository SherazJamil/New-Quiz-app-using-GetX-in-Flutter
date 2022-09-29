import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'WelcomeScreen.dart';

class Splashscreen extends StatelessWidget {
  Splashscreen({Key? key}) : super(key: key);

  final timer = Timer(
    const Duration(seconds: 4),
    () {
      Get.to(const Welcome());
      // Navigate to your favorite place
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            //constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.jpg"), fit: BoxFit.fill)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'QuiZee',
                  style: TextStyle(
                    fontFamily: 'Cormorant Garamond',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
