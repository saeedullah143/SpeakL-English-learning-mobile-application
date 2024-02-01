import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class WhiteLambPage extends StatefulWidget {
  @override
  _WhiteLambPageState createState() => _WhiteLambPageState();
}

class _WhiteLambPageState extends State<WhiteLambPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> paragraphs = [
    "Once upon a time, in a quiet village, there lived a little girl named Emily. She was known for her kindness and her love for animals.",
    "One sunny morning, as Emily was walking through the meadow, she spotted something white in the distance. As she got closer, she realized it was a small white lamb.",
    "The lamb had lost its way and seemed scared. Emily gently picked it up and cradled it in her arms. She decided to take it home and care for it.",
    "Back at her cottage, Emily made a cozy bed for the lamb and fed it some fresh milk. The lamb seemed to trust Emily completely and nuzzled against her.",
    "Days turned into weeks, and Emily and the lamb became inseparable. They spent their days exploring the meadow and playing by the river.",
    "As the lamb grew, its fleece became whiter and more beautiful. It was the whitest lamb anyone had ever seen, and the villagers marveled at its beauty.",
    "But Emily knew that the lamb deserved to be with its family. So, one day, she took the lamb to the edge of the meadow and gently released it.",
    "The lamb hesitated for a moment, looking back at Emily with gratitude in its eyes, and then it bounded away to rejoin its flock."
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
        title: Text('The White Lamb'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: paragraphs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                paragraphs[index],
                style: TextStyle(fontSize: 20.0),
              ),
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