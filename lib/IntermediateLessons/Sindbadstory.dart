import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SindbadPage extends StatefulWidget {
  @override
  State<SindbadPage> createState() => _SindbadPageState();
}

class _SindbadPageState extends State<SindbadPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> storyParagraphs = [
    LessonParagraph(
        "Part 1",
        "Once upon a time, there lived a sailor named Sindbad. He was known far and wide for his incredible adventures at sea. In one of his most remarkable journeys, Sindbad and his fearless crew set sail on a grand voyage. As they ventured deeper into the vast ocean, they encountered a mysterious island."
    ),
    LessonParagraph(
        "Part 2",
        "The island they found was unlike any other. It was inhabited by giant birds with feathers as big as sails and trees that bore precious gemstones. Sindbad and his crew marveled at the wonders of this extraordinary place. Little did they know that their journey was about to become even more astonishing, as they set sail from the enchanted island to continue their adventures on the high seas."
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
        title: Text("Sindbad's Strange Voyage"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: storyParagraphs.length,
        itemBuilder: (context, index) {
          final paragraph = storyParagraphs[index];
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