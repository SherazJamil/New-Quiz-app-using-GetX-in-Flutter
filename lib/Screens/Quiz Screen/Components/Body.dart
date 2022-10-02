import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Controller/Questioncontrolller.dart';
import 'package:quiz_app/Screens/Quiz%20Screen/Components/Progressbar.dart';

import 'Questioncard.dart';

class Bodys extends StatelessWidget {
  const Bodys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        SvgPicture.asset(
            "assets/bg.svg",
            fit: BoxFit.fill
        ),
        SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 15,
                    ),
                  child: ProgressBar(),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15
                    ),
                  child: Obx(() => Text.rich(
                    TextSpan(
                      text: "Question ${_questionController.questionNum.value}",
                      style: const TextStyle(
                        color: Color(0xFF8B94BC),
                      ),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: const TextStyle(
                            color: Color(0xFF8B94BC),
                          ),
                        ),
                      ]
                    ),
                  )),
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: PageView.builder(
                        itemBuilder: (context, index) => QuestionCard(
                            question: _questionController.questions[index]),
                      itemCount: _questionController.questions.length,
                      controller: _questionController.pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      onPageChanged: _questionController.updateTheQnNum,
                    )
                )
              ],
            ),
        ),
      ],
    );
  }
}