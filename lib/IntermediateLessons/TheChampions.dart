import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ChampionsPage extends StatefulWidget {
  @override
  State<ChampionsPage> createState() => _ChampionsPageState();
}

class _ChampionsPageState extends State<ChampionsPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> paragraphs = [
    LessonParagraph(
        "Part 1",
        "Champions are not born; they are made through dedication, hard work, and a relentless pursuit of excellence. Whether in sports, academics, or any other field, champions are those who rise above challenges and strive to be the best version of themselves."
    ),
    LessonParagraph(
        "Part 2",
        "Being a champion is not just about winning; it's about the values and character traits developed along the way. Perseverance, resilience, teamwork, and sportsmanship are qualities that define true champions."
    ),
    LessonParagraph(
        "Part 3",
        "Champions inspire others with their achievements and serve as role models for the next generation. They show us that with passion and a strong work ethic, we can overcome obstacles and reach our goals."
    ),
    LessonParagraph(
        "Part 4",
        "In our own journeys, we can all strive to be champions in our respective fields. It may not always be easy, but by setting high standards, believing in ourselves, and never giving up, we can become champions in our own right."
    ),
  ];
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
  Future<void> speakParagraph(String paragraph) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(paragraph);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Champions"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: paragraphs.length,
        itemBuilder: (context, index) {
          final paragraph = paragraphs[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(paragraph.title, style: TextStyle(fontSize: 24.0),),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(paragraph.text, style: TextStyle(fontSize: 20.0),),
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => speakParagraph(paragraph.text),
            ),
          );
        },
      ),
    );
  }
}

class LessonParagraph {
  final String title;
  final String text;

  LessonParagraph(this.title, this.text);
}