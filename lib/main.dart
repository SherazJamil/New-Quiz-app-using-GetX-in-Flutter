import 'package:flutter/material.dart';
import 'Screens/SplashScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp( const GetMaterialApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}