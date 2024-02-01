import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class GoodHabitsPage extends StatefulWidget {
  @override
  State<GoodHabitsPage> createState() => _GoodHabitsPageState();
}

class _GoodHabitsPageState extends State<GoodHabitsPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<DialogLine> goodHabitsParagraphs = [
    DialogLine("Narrator", "Good habits are important for a healthy and happy life."),
    DialogLine("Narrator", "They include things like exercising, eating good food,"),
    DialogLine("Narrator", "being on time, being kind to others, and telling the truth."),
    DialogLine("Narrator", "Having good habits can make your life better and happier."),
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
        title: Text('Good Habits'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
            itemCount: goodHabitsParagraphs.length,
            itemBuilder: (context, index) {
              final line = goodHabitsParagraphs[index];
              return ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 16.0,top: 35.0),
                  child: Text(line.text, style: TextStyle(
                    fontSize: 25.0
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