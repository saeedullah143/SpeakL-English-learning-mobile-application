import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SoldiersPage extends StatefulWidget {
  @override
  State<SoldiersPage> createState() => _SoldiersPageState();
}

class _SoldiersPageState extends State<SoldiersPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> paragraphs = [
    LessonParagraph(
        "Part 1",
        "Soldiers are the brave men and women who dedicate their lives to serving and protecting their countries. They embody courage, honor, and selflessness. Their sacrifices often go unnoticed, but their contributions are immeasurable."
    ),
    LessonParagraph(
        "Part 2",
        "From defending borders to aiding in times of disaster, soldiers are always ready to respond. They undergo rigorous training, face extreme conditions, and make tremendous sacrifices for the safety and well-being of their fellow citizens."
    ),
    LessonParagraph(
        "Part 3",
        "Soldiers stand as a symbol of unity and strength. They come from diverse backgrounds, but they unite under one flag and one mission. Their dedication to their countries and their comrades is unwavering."
    ),
    LessonParagraph(
        "Part 4",
        "The life of a soldier is not without challenges. They endure separation from family and the psychological toll of conflict. Yet, their resilience and determination shine through as they fulfill their duties with unwavering commitment."
    ),
    LessonParagraph(
        "Part 5",
        "On this day, let us remember and honor the soldiers who have served and continue to serve. Their sacrifices deserve our utmost respect and gratitude. They are the guardians of our freedoms and the protectors of our nations."
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
        title: Text("Soldiers"),
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