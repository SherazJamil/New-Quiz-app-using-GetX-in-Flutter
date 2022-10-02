import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quiz_app/Controller/Questioncontrolller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF3F4768),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          return Stack(
            children: [
              LayoutBuilder(
                  builder: (context, constraints) => Container(
            width: constraints.maxWidth * controller.animation.value,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.deepOrange, Colors.amberAccent],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(50),
                  ),
          ),
              ),
              Positioned.fill(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10
                ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "${(controller.animation.value * 60).round()} sec",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SvgPicture.asset("assets/clock.svg"),
                      ],
                    ),
              ))
            ],
          );
        },
      ),
    );
  }
}
