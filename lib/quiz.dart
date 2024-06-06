import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test2/questionScreen.dart';

import 'package:test2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.purple, Colors.blue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
              child: activeScreen)),
    );
  }
}
