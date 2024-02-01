import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class FantasticShoemakerPage extends StatefulWidget {
  @override
  State<FantasticShoemakerPage> createState() => _FantasticShoemakerPageState();
}

class _FantasticShoemakerPageState extends State<FantasticShoemakerPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> paragraphs = [
    LessonParagraph(
        "Part 1",
        "Once upon a time in a quaint village, there lived a shoemaker named Albert. He was known far and wide for his extraordinary talent in crafting shoes. His creations were not just shoes; they were works of art. People traveled from distant lands to have a pair of shoes made by Albert."
    ),
    LessonParagraph(
        "Part 2",
        "One day, a stranger arrived at Albert's workshop. He was a wealthy nobleman who had heard of Albert's exceptional skills. The nobleman commissioned a pair of shoes like no other. He wanted shoes that would make him fly above the clouds and dance with the stars."
    ),
    LessonParagraph(
        "Part 3",
        "Albert was intrigued by the challenge. He worked day and night, pouring his heart and soul into the creation of these magical shoes. Finally, after weeks of tireless effort, he presented the shoes to the nobleman. The nobleman put them on and, with a leap, soared into the sky."
    ),
    LessonParagraph(
        "Part 4",
        "Albert's incredible craftsmanship had turned a simple pair of shoes into something truly magical. From that day on, Albert's fame spread even farther, and he became known as 'The Fantastic Shoemaker.' He continued to create extraordinary shoes, reminding everyone that with dedication and passion, even the ordinary can become fantastic."
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
        title: Text("The Fantastic Shoemaker"),
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