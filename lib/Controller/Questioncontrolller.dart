import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Models/QuestionModel.dart';
import 'package:quiz_app/Screens/ScoreScreen/Scorescreen.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController;

  final List<Questions> _questions = data.map(
      (questions) => Questions(
      id: questions['id'],
          question: questions['question'],
          options: questions['options'],
          answer: questions['answer_index']),
      )
      .toList();
  List<Questions> get questions =>_questions;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

   late int _correctAnswer;
  int get correctAnswer => _correctAnswer;

  late int _selectedAnswer;
  int get selectedAnswer => _selectedAnswer;

  final RxInt _questionNum = 1.obs;
  RxInt get questionNum => _questionNum;

  int _numOfCorrectAnswers = 0;
  int get numOfCorrectAnswers => _numOfCorrectAnswers;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: const Duration(
            seconds: 60
        ),
            vsync: this
        );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAnswer(Questions question, int selectedIndex) {
    _isAnswered = true;
    _correctAnswer = question.answer;
    _selectedAnswer = selectedIndex;

    if (_correctAnswer == _selectedAnswer) _numOfCorrectAnswers++;
    _animationController.stop();
    update();
    Future.delayed(const Duration(
        seconds: 3
    ), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNum.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: const Duration(
              milliseconds: 250,
          ),
          curve: Curves.ease
      );
      _animationController.reset();
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(const ScoreScreen());
    }
  }

  void updateTheQnNum(int index) {
    _questionNum.value = index + 1;
  }
}