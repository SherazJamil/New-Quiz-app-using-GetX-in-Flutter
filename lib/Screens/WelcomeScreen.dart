import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Screens/Quiz%20Screen/QuizScreen.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(
                    flex: 2
                ),
                const Text(
                  "Let's Play QuiZee,",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Cormorant Garamond',
                  ),
                ),
                const Text(
                  "Please enter your Name",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.orange,
                    hintText: "Enter your Full Name",
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                InkWell(
                  onTap: () => Get.to(const Quiz()),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87, //New
                            blurRadius: 5.0,
                            offset: Offset(5, 5))
                      ],
                      gradient: LinearGradient(
                        colors: [Colors.deepOrange, Colors.red],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: const Text(
                      "Lets Play QuiZee",
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                          color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Spacer(
                    flex: 2
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}