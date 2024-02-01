import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class CanteenConversationPage extends StatefulWidget {
  @override
  State<CanteenConversationPage> createState() => _CanteenConversationPageState();
}

class _CanteenConversationPageState extends State<CanteenConversationPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<DialogLine> dialogue = [
    DialogLine("Student 1", "Hi! What are you eating for lunch today?"),
    DialogLine("Student 2", "I'm thinking of having a sandwich. How about you?"),
    DialogLine("Student 1", "I want pizza. The cafeteria has yummy pizza."),
    DialogLine("Student 2", "Pizza sounds good. I might get some too."),
    DialogLine("Student 1", "Great! Let's get pizza together."),
    DialogLine("Student 2", "Okay, let's do it!"),
  ];

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
        title: Text('Canteen Conversation'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: dialogue.length,
        itemBuilder: (context, index) {
          final line = dialogue[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(line.text),
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => speakLine(line.text),
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