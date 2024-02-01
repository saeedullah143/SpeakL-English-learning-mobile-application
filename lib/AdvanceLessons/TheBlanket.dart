import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class BlanketStoryPage extends StatefulWidget {
  @override
  _BlanketStoryPageState createState() => _BlanketStoryPageState();
}

class _BlanketStoryPageState extends State<BlanketStoryPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> paragraphs = [
    "Once upon a time, in a small village nestled between rolling hills, there lived a young girl named Lily.",
    "Lily was known throughout the village for her kindness and generosity. She always helped those in need.",
    "One chilly winter night, as the snow began to fall, Lily heard a knock at her door.",
    "When she opened it, she found a poor, shivering beggar standing on her doorstep.",
    "Without hesitation, Lily invited the beggar inside and offered her a warm meal and a cozy blanket.",
    "The beggar was grateful beyond words and thanked Lily for her generosity.",
    "As the beggar left, she told Lily, 'Your kindness will be rewarded.'",
    "The next morning, when Lily woke up, she found a beautiful, magical blanket at the foot of her bed."
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
        title: Text('The Blanket'),
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