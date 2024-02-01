import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


class DawnAwakePoemPage extends StatefulWidget {
  @override
  State<DawnAwakePoemPage> createState() => _DawnAwakePoemPageState();
}

class _DawnAwakePoemPageState extends State<DawnAwakePoemPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> poemLines = [
    LessonParagraph(
        "The Dawn’s awake!\nA flash of smoldering flame and fire\nIgnites the East.\nThen, higher, higher, higher,"
    ),
    LessonParagraph(
        "O’er the earth\nThe expanse\nOf suffusing light\nGrows immense.\nAnd now she mounts the steep"
    ),
    LessonParagraph(
        "A diamond on the very\nSteep of Heaven,\nAnd with one last flash\nThat leaps clear\nTo the zenith,"
    ),
    LessonParagraph(
        "In a moment the flame\nIs gone; She is over\nAnd Past,\nAnd the night"
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
        title: Text("The Dawn's Awake"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: poemLines.length,
        itemBuilder: (context, index) {
          final paragraph = poemLines[index];
          return ListTile(
            title: Padding(
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
  final String text;

  LessonParagraph(this.text);
}