import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class BlessingPoemPage extends StatefulWidget {
  @override
  State<BlessingPoemPage> createState() => _BlessingPoemPageState();
}

class _BlessingPoemPageState extends State<BlessingPoemPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> poemLines = [
    LessonParagraph(
      "What a blessing it is to have friends so dear,",
    ),
    LessonParagraph(
      "Who stand by your side, year after year.",
    ),
    LessonParagraph(
      "Through ups and downs, laughter and tears,",
    ),
    LessonParagraph(
      "Their love and support, oh, how it endears!",
    ),
    LessonParagraph(
      "With each passing day, their kindness shines through,",
    ),
    LessonParagraph(
      "A treasure so precious, forever in view.",
    ),
    LessonParagraph(
      "In joy and in sorrow, they're always near,",
    ),
    LessonParagraph(
      "What a blessing it is, these friends so dear.",
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
        title: Text("What a Blessing Poem"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: poemLines.length,
        itemBuilder: (context, index) {
          final paragraph = poemLines[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(14.0),
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