import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class FellingOfThePinesPage extends StatefulWidget {
  @override
  State<FellingOfThePinesPage> createState() => _FellingOfThePinesPageState();
}

class _FellingOfThePinesPageState extends State<FellingOfThePinesPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> textLines = [
    "The woods were tall, the pines so grand,",
    "A forest vast, across the land.",
    "With axes sharp and hearts so bold,",
    "The loggers came, their tales were told.",
    "They toiled and sweated, day and night,",
    "To fell the trees, a daunting sight.",
    "With every swing, they echoed deep,",
    "The sound of progress, promises to keep.",
    "But as the pines fell, one by one,",
    "A truth emerged, their work was done.",
    "The forest lost, a price too high,",
    "For progress came with a heavy sigh.",
    "The lesson learned, in years gone by,",
    "To cherish nature, and the clear blue sky.",
  ];
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> speakLines(List<String> lines) async {
    await flutterTts.setLanguage('en-US');
    for (final line in lines) {
      await flutterTts.speak(line);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Felling of the Pines"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: (textLines.length / 2).ceil(),
        itemBuilder: (context, index) {
          final startIndex = index * 2;
          final endIndex = startIndex + 2;
          final lines = textLines.sublist(startIndex, endIndex);
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: lines.map((line) {
                  return Text(line,style: TextStyle(fontSize: 20.0),);
                }).toList(),
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => speakLines(lines),
            ),
          );
        },
      ),
    );
  }
}



