import 'package:flutter/material.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key, required this.TakeTest});
  final void Function() TakeTest;
  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  List<String> emojies = ["💖", "🗺", "📅", "🧠"];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: [
        Text(
          textAlign: TextAlign.center,
          "Discover Your\nPersonality Type!",
          style: TextStyle(fontSize: 44, color: Colors.white),
        ),
        Text("${emojies[0]}  ${emojies[1]}", style: TextStyle(fontSize: 50)),
        Text("${emojies[2]}  ${emojies[3]}", style: TextStyle(fontSize: 50)),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            widget.TakeTest();
          },
          child: Text(
            "Start Test",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
