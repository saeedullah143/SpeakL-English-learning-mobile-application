import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class GoodTimberPoemPage extends StatefulWidget {
  @override
  State<GoodTimberPoemPage> createState() => _GoodTimberPoemPageState();
}

class _GoodTimberPoemPageState extends State<GoodTimberPoemPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> poemLines = [
    "The tree that never had to fight",
    "For sun and sky and air and light,",
    "But stood out in the open plain",
    "And always got its share of rain,",
    "Never became a forest king",
    "But lived and died a scrubby thing.",

    "The man who never had to toil",
    "To gain and farm his patch of soil,",
    "Who never had to win his share",
    "Of sun and sky and light and air,",
    "Never became a manly man",
    "But lived and died as he began.",

    "Good timber does not grow with ease",
    "The stronger wind, the stronger trees",
    "The further sky, the greater length,",
    "The more the storm, the more the strength",
    "By sun and cold, by rain and snow",
    "In trees and men good timbers grow",

    "Where thickest lies the forest growth",
    "We find the patriarchs of both",
    "And they hold counsel with the stars",
    "Whose broken branches show the scars",
    "Of many winds and much of strife",
    "This is the common law of life"

  ];
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> speakLines(int startIndex, int endIndex) async {
    await flutterTts.setLanguage('en-US');
    final linesToSpeak = poemLines.sublist(startIndex, endIndex);
    final linesToSpeakText = linesToSpeak.join('\n');
    await flutterTts.speak(linesToSpeakText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Good Timber'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: poemLines.length ~/ 6, // Number of sets of 6 lines
        itemBuilder: (context, index) {
          final startIndex = index * 6;
          final endIndex = startIndex + 6;
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                poemLines.sublist(startIndex, endIndex).join('\n'),
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => speakLines(startIndex, endIndex),
            ),
          );
        },
      ),
    );
  }
}