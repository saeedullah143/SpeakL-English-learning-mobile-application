import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class DreamSpeechPage extends StatefulWidget {
  @override
  State<DreamSpeechPage> createState() => _DreamSpeechPageState();
}

class _DreamSpeechPageState extends State<DreamSpeechPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> paragraphs = [
    "I say to you today, my friends, so even though we face the difficulties of today and tomorrow, I still have a dream. It is a dream deeply rooted in the American dream.",
    "I have a dream that one day this nation will rise up and live out the true meaning of its creed: 'We hold these truths to be self-evident; that all men are created equal.'",
    "I have a dream that one day on the red hills of Georgia the sons of former slaves and the sons of former slave owners will be able to sit down together at the table of brotherhood.",
    "I have a dream that one day even the state of Mississippi, a state sweltering with the heat of injustice, sweltering with the heat of oppression, will be transformed into an oasis of freedom and justice.",
    "I have a dream that my four little children will one day live in a nation where they will not be judged by the color of their skin but by the content of their character.",
    "I have a dream today!",
    "Let freedom ring from Stone Mountain of Georgia. Let freedom ring from Lookout Mountain of Tennessee. Let freedom ring from every hill and molehill of Mississippi. From every mountainside, let freedom ring."
  ];

  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> speakParagraph(int index) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(paragraphs[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I Have a Dream'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: paragraphs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(paragraphs[index], style: TextStyle(fontSize: 20.0),),
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => speakParagraph(index),
            ),
          );
        },
      ),
    );
  }
}