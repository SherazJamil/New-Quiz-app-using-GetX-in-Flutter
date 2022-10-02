import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Controller/Questioncontrolller.dart';
import 'package:quiz_app/Models/QuestionModel.dart';
import 'Option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key? key, required this.question,}) : super(key: key);

  final Questions question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: 15,
        ),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Text(
              question.question,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            const SizedBox(
                height: 10
            ),
            ...List.generate(
                question.options.length,
                    (index) => Options(
                      index: index,
                      text: question.options[index],
                      press: () => _controller.checkAnswer(question, index),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
