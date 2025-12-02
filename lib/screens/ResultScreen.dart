import 'package:flutter/material.dart';

import '../data/data.dart';

class Resultscreen extends StatefulWidget {
  const Resultscreen({super.key, required this.answers, required this.retake});
  final List<personality> answers;
  final void Function() retake;
  @override
  State<Resultscreen> createState() => _ResultscreenState();
}

class _ResultscreenState extends State<Resultscreen> {
  late personality winner;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map<personality, int> count = {
      personality.Adventurer: 0,
      personality.Feeler: 0,
      personality.Thinker: 0,
      personality.Planner: 0,
    };
    for (var answer in widget.answers) {
      count[answer] = count[answer]! + 1;
    }

    int maxCount = 0;
    count.forEach((p, c) {
      if (c > maxCount) {
        maxCount = c;
        winner = p;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          results[winner]!,
          style: TextStyle(color: Colors.white, fontSize: 30),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
        ElevatedButton(onPressed: widget.retake, child: Text("Restart Test")),
      ],
    );
  }
}
