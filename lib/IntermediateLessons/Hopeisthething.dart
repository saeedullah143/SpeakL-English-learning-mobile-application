import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HopeIsTheThingPage extends StatefulWidget {
  @override
  State<HopeIsTheThingPage> createState() => _HopeIsTheThingPageState();
}

class _HopeIsTheThingPageState extends State<HopeIsTheThingPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> poemLines = [
    LessonParagraph(
        "Hope is the thing with feathers\nThat perches in the soul,\nAnd sings the tune without the words,\nAnd never stops at all,"
    ),
    LessonParagraph(
        "And sweetest in the gale is heard;\nAnd sore must be the storm\nThat could abash the little bird\nThat kept so many warm."
    ),
    LessonParagraph(
        "I've heard it in the chillest land,\nAnd on the strangest sea;\nYet, never, in extremity,\nIt asked a crumb of me."
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
        title: Text("Hope is the Thing with Feathers"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: poemLines.length,
        itemBuilder: (context, index) {
          final paragraph = poemLines[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(14.0),
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
  final String text;

  LessonParagraph(this.text);
}