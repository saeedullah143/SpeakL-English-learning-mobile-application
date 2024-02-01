import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class DreamsPage extends StatefulWidget {
  @override
  State<DreamsPage> createState() => _DreamsPageState();
}

class _DreamsPageState extends State<DreamsPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> paragraphs = [
    LessonParagraph(
        "Part 1",
        "Dreams are the fuel that propels us forward in life. They are the visions we hold in our hearts, the aspirations that drive us to reach new heights. Dreams are not mere fantasies; they are the blueprints of our future."
    ),
    LessonParagraph(
        "Part 2",
        "Every great accomplishment begins with a dream. From inventors to artists, leaders to athletes, all have dared to dream and then worked relentlessly to turn those dreams into reality. Dreams inspire us to push boundaries and challenge the status quo."
    ),
    LessonParagraph(
        "Part 3",
        "While dreams are powerful, they require dedication, perseverance, and hard work to fulfill. They often come with obstacles and setbacks, but it is in overcoming these challenges that we grow and transform into the best versions of ourselves."
    ),
    LessonParagraph(
        "Part 4",
        "In the pursuit of our dreams, we discover our true potential. So, never stop dreaming, and never stop believing in the power of your dreams. They have the potential to change your life and, in doing so, change the world."
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
        title: Text("Dreams"),
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