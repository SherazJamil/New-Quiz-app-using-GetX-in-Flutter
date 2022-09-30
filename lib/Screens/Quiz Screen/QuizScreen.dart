import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Controller/Questioncontrolller.dart';
import 'package:quiz_app/Screens/Quiz%20Screen/Components/Body.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: _controller.nextQuestion, child: const Text("Skip")),
        ],
      ),
      body: Bodys(),
    );
  }
}