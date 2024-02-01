import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class AccidentStoryPage extends StatefulWidget {
  @override
  State<AccidentStoryPage> createState() => _AccidentStoryPageState();
}

class _AccidentStoryPageState extends State<AccidentStoryPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<DialogLine> storyParagraphs = [
    DialogLine("Narrator", "One sunny day, a kid named Alex was riding his bike."),
    DialogLine("Narrator", "He had a fall and hurt himself."),
    DialogLine("Narrator", "His friend Jake saw it happen and came to help."),
    DialogLine("Friend", "Jake carefully got Alex back on his bike."),
    DialogLine("Friend", "They went to the hospital quickly."),
    DialogLine("Narrator", "Alex got the help he needed thanks to Jake."),
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
        title: Text("Kid's Accident Story"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: storyParagraphs.length,
        itemBuilder: (context, index) {
          final line = storyParagraphs[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 35.0),
              child: Text(line.text, style: TextStyle(fontSize: 20),),
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