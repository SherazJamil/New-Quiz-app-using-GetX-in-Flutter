import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key? key, @required this.question,}) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
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
              color: Colors.black,
            ),
          ),
          const SizedBox(
              height: 10
          ),
          ...List.generate(
              question.options.length,
                  (index) => Option(
                    index: index,
                    text: question.options[index],
                    press: () => _controller.checkAns(question, index),
                  ),
          ),
        ],
      ),
    );
  }
}
