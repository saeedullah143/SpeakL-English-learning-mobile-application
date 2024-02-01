import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class JohnyJohnyPage extends StatefulWidget {
  @override
  State<JohnyJohnyPage> createState() => _JohnyJohnyPageState();
}

class _JohnyJohnyPageState extends State<JohnyJohnyPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<DialogLine> poemLines = [
    DialogLine("Child", "Johny, Johny,"),
    DialogLine("Child", "Yes, Papa?"),
    DialogLine("Child", "Eating sugar?"),
    DialogLine("Child", "No, Papa."),
    DialogLine("Child", "Telling lies?"),
    DialogLine("Child", "No, Papa."),
    DialogLine("Child", "Open your mouth."),
    DialogLine("Child", "Ha, ha, ha!"),
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
        title: Text('Johnny Johnny Yes Papa'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: poemLines.length,
        itemBuilder: (context, index) {
          final line = poemLines[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 35.0),
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