import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class LastLessonPage extends StatefulWidget {
  @override
  State<LastLessonPage> createState() => _LastLessonPageState();
}

class _LastLessonPageState extends State<LastLessonPage> {
  final FlutterTts flutterTts = FlutterTts();

  final DialogLine lessonParagraph = DialogLine(
      "Teacher",
      "Today is your last beginner lesson. Great job! You have worked hard and learned a lot. Now, you are moving on to intermediate lessons. Get ready for new and exciting challenges. Keep up the good work!"
  );

  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> speakLine(String line) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(line);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Last Lesson for Beginners'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(lessonParagraph.text),
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => speakLine(lessonParagraph.text),
            ),
          ),
        ],
      ),
    );
  }
}

class DialogLine {
  final String speaker;
  final String text;

  DialogLine(this.speaker, this.text);
}