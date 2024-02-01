import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ParentsPage extends StatefulWidget {
  @override
  State<ParentsPage> createState() => _ParentsPageState();
}

class _ParentsPageState extends State<ParentsPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> paragraphs = [
    LessonParagraph(
        "Part 1",
        "Parents are our first teachers and the foundation of our lives. They provide us with love, care, and guidance from the moment we are born. The bond between parents and children is unique and irreplaceable."
    ),
    LessonParagraph(
        "Part 2",
        "Parents shape our values, morals, and character. They instill in us the principles of kindness, responsibility, and empathy. The lessons we learn from them stay with us throughout our lives."
    ),
    LessonParagraph(
        "Part 3",
        "The sacrifices parents make for their children are immeasurable. They work tirelessly to provide for their families, offering opportunities and a better future. Their love knows no bounds."
    ),
    LessonParagraph(
        "Part 4",
        "As we grow, it's important to cherish our parents and show them gratitude. Listening to their advice, spending time with them, and caring for them as they did for us are ways to honor their love and dedication."
    ),
    LessonParagraph(
        "Part 5",
        "In the journey of life, parents are our unwavering support and a source of strength. They celebrate our successes and stand by us in our failures. The love of parents is a treasure beyond measure."
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
        title: Text("Parents"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: paragraphs.length,
        itemBuilder: (context, index) {
          final paragraph = paragraphs[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(paragraph.title,style: TextStyle(fontSize: 24.0),),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(paragraph.text,style: TextStyle(fontSize: 20.0),),
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