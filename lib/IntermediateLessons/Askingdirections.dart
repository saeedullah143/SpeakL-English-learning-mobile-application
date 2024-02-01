import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class DirectionsPage extends StatefulWidget {
  @override
  State<DirectionsPage> createState() => _DirectionsPageState();
}

class _DirectionsPageState extends State<DirectionsPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> conversation = [
    "William: Excuse me, I'm sorry to trouble you, but could you tell me how I can get to the train station?",
    "Kate: Yes, no problem. It's that way. Keep walking straight ahead, then after you pass the library, you have to turn left. Then take your first right, and it's across from the bus station. You cannot miss it!",
    "William: Thank you so much! I've only been in Manchester for 2 days, so I don't know how to get anywhere yet.",
    "Kate: Oh, I know that feeling. My husband and I moved here 6 months ago, and I still don't know how to find certain places! Manchester is so big.",
    "William: So just to double-check, I keep walking straight ahead till I pass the library, then I have to turn left and take the first right. Then it's across from the bus station. Is that correct?",
    "Kate: Yes, that is correct.",
    "William: Well, thanks for helping me. I must go and catch my train; hopefully, I haven't missed it!",
    "Kate: OK, bye.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversation about Direction'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: conversation.length,
        itemBuilder: (context, index) {
          final line = conversation[index];
          return _buildConversationLine(line);
        },
      ),
    );
  }

  Widget _buildConversationLine(String line) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(line, style: TextStyle(fontSize: 20.0),),
        trailing: IconButton(
          icon: Icon(Icons.volume_up),
          onPressed: () => _speakLine(line),
        ),
      ),
    );
  }
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  void _speakLine(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }
}