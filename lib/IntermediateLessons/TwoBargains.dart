import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TwoBargainsPage extends StatefulWidget {
  @override
  State<TwoBargainsPage> createState() => _TwoBargainsPageState();
}

class _TwoBargainsPageState extends State<TwoBargainsPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> paragraphs = [
    LessonParagraph(
        "Part 1",
        "The story of 'The Two Bargains' is a tale of choices and consequences. It tells of two men who made bargains with God. One man bargained for wealth, and in return, he lost his faith and morality. The other man bargained for knowledge and wisdom, and in return, he gained not only knowledge but also spiritual enlightenment and a deeper understanding of life."
    ),
    LessonParagraph(
        "Part 2",
        "This story teaches us that the choices we make in life have a profound impact on our character and happiness. It reminds us that material wealth alone does not bring fulfillment, and that seeking knowledge and wisdom can lead to a richer and more meaningful life. It encourages us to prioritize values and virtues over mere possessions."
    ),
    LessonParagraph(
        "Part 3",
        "Ultimately, 'The Two Bargains' is a parable that encourages us to reflect on our own choices and priorities. It prompts us to consider what we truly value in life and the bargains we are willing to make. It invites us to seek knowledge, wisdom, and spiritual growth as treasures that can enrich our souls and bring us closer to the divine."
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
        title: Text("The Two Bargains"),
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