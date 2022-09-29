import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Screens/QuizScreen.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
      //constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/bg.jpg"),
        fit: BoxFit.fill)),
          ),
          SafeArea(
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
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Cormorant Garamond',
                    ),
                  ),
                  const Text(
                    "Please enter your Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontFamily: 'Cormorant Garamond',
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: "Enter your Full Name",
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
                        gradient: LinearGradient(
                          colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const Text(
                        "Lets Start Quiz",
                        style: TextStyle(
                            color: Colors.black,
                          fontFamily: 'Cormorant Garamond',
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
        ],
      ),
    );
  }
}