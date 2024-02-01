import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class WordsForGreetingsPage extends StatefulWidget {
  @override
  State<WordsForGreetingsPage> createState() => _WordsForGreetingsPageState();
}

class _WordsForGreetingsPageState extends State<WordsForGreetingsPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<Section> sections = [
    Section(
      title: "Singular = 1 (only one)",
      content: [
        "I + am and i + can.",
        "I am called John",
        "I can learn English",
        "I can cook a cake",
        "I am happy",
        "I am sad",
      ],
    ),
    Section(
      title: "You + are / will.",
      content: [
        "You are called John",
        "You will learn English",
        "You will walk the dog",
        "You are a super teacher",
      ],
    ),
    Section(
      title: "He + is (he = For male or man or boy   and   she = For female or lady or girl)",
      content: [
        "John is from Bangkok he is my friend.",
        "He is happy",
        "She is hungry.",
        "Sally is from Paris she is my friend.",
      ],
    ),
    Section(
      title: "It + is.",
      content: ["It is hot today."],
    ),
    Section(
      title: "Plural = 1+ (Means there is more than 1,2,3...)",
      content: ["You + are.", "You are all super students.", "We are.", "We are going to the park.", "They are.", "They are good students."],
    ),
    Section(
      title: "When to use a or an?",
      content: [
        "All words that begin with the following letters all should have a before the word",
        "b, c, d, f, g, h, j, k, l, m, n, p, q, r, s, t, v, w, x, y, z",
        "a bag, a cat, a goat, a hat, a leg, a nail, a rat",
        "All words that begin with the following letters all should have an before the word",
        "a, e, i, o, u",
        "an ant, an egg, an igloo, an orange, an university",
      ],
    ),
    Section(
      title: "Full form is written / Short form  is when spoken",
      content: [
        "I am 	to    I'm",
        "You are  to   You're",
        "He is	 to   He's",
        "She is	 to  She's",
        "It is	 to   It's",
        "Are not	to   Aren't",
        "Is not	  to  Isn't",
      ],
    ),
  ];

  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
  Future<void> speakContent(List<String> content) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setSpeechRate(0.5);
    for (final line in content) {
      await flutterTts.speak(line);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("English Grammar and Usage"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: sections.length,
        itemBuilder: (context, index) {
          final section = sections[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  section.title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...section.content.map((text) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.volume_up),
                    onPressed: () => speakContent([text]),
                  ),
                );
              }).toList(),
            ],
          );
        },
      ),
    );
  }
}

class Section {
  final String title;
  final List<String> content;

  Section({required this.title, required this.content});
}