import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class FootballConversationPage extends StatefulWidget {
  @override
  State<FootballConversationPage> createState() => _FootballConversationPageState();
}

class _FootballConversationPageState extends State<FootballConversationPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<DialogLine> dialogue = [
    DialogLine("Friend 1", "Hey, did you see the latest football game?"),
    DialogLine("Friend 2", "Yes, I watched it! It was a great match."),
    DialogLine("Friend 1", "That last-minute goal was unbelievable!"),
    DialogLine("Friend 2", "I agree! The striker is playing really well this season."),
    DialogLine("Friend 1", "Do you think our team can win the championship this year?"),
    DialogLine("Friend 2", "I am hopeful. Our midfielders are doing a good job."),
    DialogLine("Friend 1", "Let's watch the next game together at the sports bar."),
    DialogLine("Friend 2", "Sounds like a plan! I can't wait!"),
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
        title: Text('Football Conversation'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: dialogue.length,
        itemBuilder: (context, index) {
          final line = dialogue[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0,top: 35.0),
              child: Text(line.text, style: TextStyle(
                fontSize: 20.0
              ),),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: IconButton(
                icon: Icon(Icons.volume_up),
                onPressed: () => speakLine(line.text),
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