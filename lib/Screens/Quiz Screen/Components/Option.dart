import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Controller/Questioncontrolller.dart';

class Options extends StatelessWidget {
  const Options({
    Key? key,
    required this.text,
    required this.index,
    required this.press,
  }) : super(key: key);

  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color ritColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAnswer) {
                return Colors.greenAccent.shade700;
              } else if (index == qnController.selectedAnswer &&
                  qnController.selectedAnswer != qnController.correctAnswer) {
                return Colors.red;
              }
            }
            return Colors.grey.shade800;
          }
          IconData ritIcon() {
            return ritColor() == Colors.red ? Icons.close : Icons.done;
          }
          return InkWell(
            onTap: press,
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1}. $text",
                    style: TextStyle(
                      color: ritColor(),
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: ritColor() == Colors.grey.shade800
                          ? Colors.transparent
                          : ritColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: ritColor()),
                    ),
                    child: ritColor() == Colors.grey.shade800
                        ? null
                        : Icon(ritIcon(), size: 16),
                  )
                ],
              ),
            ),
          );
        });
  }
}