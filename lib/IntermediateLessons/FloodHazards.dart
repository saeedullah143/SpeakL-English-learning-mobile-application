import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class FloodHazardsPage extends StatefulWidget {
  @override
  State<FloodHazardsPage> createState() => _FloodHazardsPageState();
}

class _FloodHazardsPageState extends State<FloodHazardsPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> lessonParagraphs = [
    LessonParagraph(
        "Part 1",
        "Floods can be incredibly dangerous natural disasters. When heavy rainfall or melting snow causes rivers and streams to overflow, it can lead to extensive flooding. In populated areas, this can result in homes and buildings being submerged in water. Floodwaters can destroy property, disrupt communities, and force people to evacuate their homes. The hazards of floods include not only the immediate danger of drowning but also long-term risks like waterborne diseases and damage to infrastructure."
    ),
    LessonParagraph(
        "Part 2",
        "Floods can also trigger landslides and mudslides in hilly or mountainous regions, posing additional threats to people and property. The impact of flooding is not limited to the physical destruction; it can have lasting emotional and economic consequences for affected communities. Therefore, it is essential to have flood preparedness plans, early warning systems, and proper infrastructure in place to mitigate the hazards and protect lives and property."
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
        title: Text("Flood Hazards Lesson"),
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