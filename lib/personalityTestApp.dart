import 'package:flutter/material.dart';
import 'data/data.dart';
import 'screens/QuestionScreen.dart' show Questionscreen;
import 'screens/ResultScreen.dart' show Resultscreen;
import 'screens/StartScreen.dart' show Startscreen;

class personalityTestApp extends StatefulWidget {
  const personalityTestApp({super.key});

  @override
  State<personalityTestApp> createState() => _personalityTestAppState();
}

enum Screen { start, test, result }

class _personalityTestAppState extends State<personalityTestApp> {
  Screen currentScreenName = Screen.start;
  List<personality> chosenAnswers = [];

  void chooseAnswer(personality answer) {
    chosenAnswers.add(answer);
    if (chosenAnswers.length == questions.length) {
      setState(() {
        currentScreenName = Screen.result;
      });
    }
  }

  void takeTest() {
    setState(() {
      currentScreenName = Screen.test;
    });
  }

  void retake() {
    setState(() {
      currentScreenName = Screen.start;
      chosenAnswers = [];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chosenAnswers = [];
    currentScreenName = Screen.start;
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = Startscreen(TakeTest: takeTest);
    if (currentScreenName == Screen.test) {
      currentScreen = Questionscreen(answerQuestion: chooseAnswer);
    } else if (currentScreenName == Screen.result) {
      currentScreen = Resultscreen(answers: chosenAnswers, retake: retake);
    }
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 6, 48, 83),
        child: Center(child: currentScreen),
      ),
    );
  }
}
