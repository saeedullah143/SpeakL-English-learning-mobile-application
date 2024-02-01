import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class WalkToHomePage extends StatefulWidget {
  @override
  _WalkToHomePageState createState() => _WalkToHomePageState();
}

class _WalkToHomePageState extends State<WalkToHomePage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> paragraphs = [
    "It was a warm summer evening when I started my long walk back home from the city.",
    "The sun was setting, casting a golden hue over the landscape.",
    "As I walked along the winding road, I couldn't help but reflect on the day's events.",
    "I had spent the day exploring the bustling streets of the city, filled with people from all walks of life.",
    "The sights and sounds had been overwhelming, but now I longed for the tranquility of my rural home.",
    "With each step I took, I felt a sense of peace and calm wash over me.",
    "The chirping of crickets and the gentle rustling of leaves in the breeze accompanied me on my journey."
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
        title: Text('A Long Walk to Home'),
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