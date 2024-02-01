import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TwostudentdialogPage extends StatefulWidget {
  @override
  State<TwostudentdialogPage> createState() => _TwostudentdialogPageState();
}

class _TwostudentdialogPageState extends State<TwostudentdialogPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<DialogLine> dialogue = [
    DialogLine("Female", "Hi Sarah!"),
    DialogLine("Male", "Hi John!"),
    DialogLine("Female", "How are you, John?"),
    DialogLine("Male", "I'm fine, Sarah. How about you?"),
    DialogLine("Female", "I'm good, thanks."),
    DialogLine("Male", "Where are you going, Sarah?"),
    DialogLine("Female", "I'm going to school."),
    DialogLine("Male", "Oh, I'm also going to school."),
    DialogLine("Female", "Let's go, John!"),
    DialogLine("Male", "Sure, Sarah!"),
  ];
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
  Future<void> speakLine(DialogLine line) async {
      await flutterTts.speak(line.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversation Dialog'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: dialogue.length,
        itemBuilder: (context, index) {
          final line = dialogue[index];
          return ListTile(
            title: Padding(
              padding: EdgeInsets.only(
                left: 16.0, top: 35.0
              ),
              child: Text(line.text, style: TextStyle(
                fontSize: 20.0
              ),),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: IconButton(
                icon: Icon(Icons.volume_up),
                onPressed: () => speakLine(line),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DialogLine {
  final String speaker;
  final String text;

  DialogLine(this.speaker, this.text);
}