import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class LastIntermediatePage extends StatefulWidget {
  @override
  State<LastIntermediatePage> createState() => _LastIntermediatePageState();
}

class _LastIntermediatePageState extends State<LastIntermediatePage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> paragraphs = [
    LessonParagraph(
        "Congratulations on completing the intermediate level of English! You've come a long way and have acquired a strong foundation in the language. It's time to move on to more advanced topics and challenges."
    ),
    LessonParagraph(
        "In the advanced level, you will explore complex grammar, expand your vocabulary, and delve into literature and advanced writing. You'll be reading and analyzing texts, discussing ideas, and honing your communication skills."
    ),
    LessonParagraph(
        "As you progress, remember that learning a language is a continuous journey. Embrace challenges and keep practicing regularly. Engage in conversations, write, and read extensively to further improve your English proficiency."
    ),
    LessonParagraph(
        "Your dedication and hard work will pay off, opening up new opportunities in education, career, and personal growth. English is a global language, and proficiency in it can enrich your life in countless ways."
    ),
    LessonParagraph(
        "So, take this step into the advanced level with confidence and enthusiasm. Keep learning, exploring, and pushing your boundaries. The world of English literature and communication awaits your discovery!"
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
        title: Text("Last Lesson"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: paragraphs.length,
        itemBuilder: (context, index) {
          final paragraph = paragraphs[index];
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