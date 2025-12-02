import 'Answer.dart';
import 'Question.dart';

List<Question> questions = [
  Question("How do you approach a difficult decision?", [
    Answer("Analyze all options logically", personality.Thinker),
    Answer("Go with what feels right emotionally", personality.Feeler),
    Answer("Make a checklist and plan it out", personality.Planner),
    Answer("Take a leap and deal with results later", personality.Adventurer),
  ]),
  Question("What excites you the most?", [
    Answer("Solving complex problems", personality.Thinker),
    Answer("Connecting deeply with others", personality.Feeler),
    Answer("Creating a clear path to your goals", personality.Planner),
    Answer("Exploring something new", personality.Adventurer),
  ]),
  Question("Which best describes your work style?", [
    Answer("Detail-focused and logical", personality.Thinker),
    Answer("People-centered and intuitive", personality.Feeler),
    Answer("Organized and systematic", personality.Planner),
    Answer("Flexible and spontaneous", personality.Adventurer),
  ]),
  Question("How do you recharge after a long day?", [
    Answer("Quiet reflection or reading", personality.Thinker),
    Answer("Spending time with close friends", personality.Feeler),
    Answer("Planning tomorrow's tasks", personality.Planner),
    Answer("Doing something active or exciting", personality.Adventurer),
  ]),
  Question("You're most comfortable when...", [
    Answer("Things make logical sense", personality.Thinker),
    Answer("Everyone is getting along", personality.Feeler),
    Answer("There's a clear structure", personality.Planner),
    Answer("You're free to try new things", personality.Adventurer),
  ]),
  Question("Your biggest strength is...", [
    Answer("Thinking critically", personality.Thinker),
    Answer("Empathizing with others", personality.Feeler),
    Answer("Staying organized", personality.Planner),
    Answer("Being adventurous", personality.Adventurer),
  ]),
];

// ignore: camel_case_types, constant_identifier_names
enum personality { Feeler, Thinker, Planner, Adventurer }

Map<personality, String> results = {
  personality.Feeler:
      "You are a Feeler 💖\nEmpathetic, warm, and guided by emotion.",
  personality.Thinker:
      "You are a Thinker 🧠\nLogical, curious, and focused on ideas.",
  personality.Planner:
      "You are a Planner 📅\nOrganized, strategic, and goal-oriented.",
  personality.Adventurer:
      "You are an Adventurer 🗺\nSpontaneous, bold, and always exploring.",
};
