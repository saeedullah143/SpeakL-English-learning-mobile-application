import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ProphetJusticePage extends StatefulWidget {
  @override
  State<ProphetJusticePage> createState() => _ProphetJusticePageState();
}

class _ProphetJusticePageState extends State<ProphetJusticePage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> lessonParagraphs = [
    LessonParagraph(
        "The Prophet's Fairness",
        "The Prophet Muhammad (peace be upon him) was known for being fair to everyone. He treated people equally, no matter where they came from or who they were. There was a time when a woman from a certain tribe stole something. Her tribe wanted to protect her, but the Prophet insisted that everyone must be treated the same way under the law. This shows that justice means treating everyone fairly, without favoritism or discrimination."
    ),
    LessonParagraph(
        "Kindness and Compassion",
        "The Prophet (peace be upon him) didn't just talk about justice; he showed it through his actions. He said, 'Those who are not kind to others will not receive kindness.' This means that being fair isn't just about following rules; it's also about being kind and understanding. The Prophet's example reminds us that justice is not only about the law but also about being compassionate and kind to one another."
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
        title: Text("Prophet's Justice"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: lessonParagraphs.length,
        itemBuilder: (context, index) {
          final paragraph = lessonParagraphs[index];
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