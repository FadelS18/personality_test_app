import 'package:flutter/material.dart';
import '../data/Answer.dart';
import '../data/Question.dart';
import '../data/data.dart';

class Questionscreen extends StatefulWidget {
  const Questionscreen({super.key, required this.answerQuestion});
  final void Function(personality i) answerQuestion;
  @override
  State<Questionscreen> createState() => _QuestionscreenState();
}

class _QuestionscreenState extends State<Questionscreen> {
  int index = 0;
  late Question question;
  // ignore: non_constant_identifier_names
  void AnswerQuestion(Answer answer) {
    widget.answerQuestion(answer.type);
    setState(() {
      index++;
      question = questions[index];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    question = questions[index];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 5,
      children: [
        Padding(
          padding: const EdgeInsets.all(50),
          child: Text(
            question.text,
            style: TextStyle(fontSize: 30, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        // SizedBox(height: 15),
        ...question.answers.map((answer) {
          return SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 50),
              child: ElevatedButton(
                onPressed: () {
                  AnswerQuestion(answer);
                },
                child: Text(answer.text, style: TextStyle(fontSize: 20)),
              ),
            ),
          );
        }),
      ],
    );
  }
}
