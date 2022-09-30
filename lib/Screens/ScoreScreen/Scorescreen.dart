import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Controller/Questioncontrolller.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
              "assets/icons/bg.svg",
              fit: BoxFit.fill,
          ),
          Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              const Text(
                "Score",
                style: TextStyle(
                  color: Color(0xFF8B94BC),
                ),
              ),
              const Spacer(),
              Text(
                  "${_qnController.correctAnswer * 10}/${_qnController.questions.length * 10}",
                style: const TextStyle(
                  color: Color(0xFF8B94BC),
                ),
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
