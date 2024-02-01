import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class RainGoAwayPage extends StatefulWidget {
  @override
  State<RainGoAwayPage> createState() => _RainGoAwayPageState();
}

class _RainGoAwayPageState extends State<RainGoAwayPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<DialogLine> poemLines = [
    DialogLine("Child", "Rain, rain, go away,"),
    DialogLine("Child", "Come again another day;"),
    DialogLine("Child", "Little Johnny wants to play."),
    DialogLine("Rain", "Rain, rain, go away,"),
    DialogLine("Child", "Rain, rain, go away,"),
    DialogLine("Child", "Come again another day;"),
    DialogLine("Child", "Little Johnny wants to play."),
    DialogLine("Rain", "Rain, rain, go away,"),
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
        title: Text('Rain, Rain, Go Away'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: poemLines.length,
        itemBuilder: (context, index) {
          final line = poemLines[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 35.0),
              child: Text(line.text,style: TextStyle(fontSize: 20.0),),
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