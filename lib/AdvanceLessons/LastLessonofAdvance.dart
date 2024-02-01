import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class AdvanceLastLessonPage extends StatefulWidget {
  @override
  State<AdvanceLastLessonPage> createState() => _AdvanceLastLessonPageState();
}

class _AdvanceLastLessonPageState extends State<AdvanceLastLessonPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> paragraphs = [
    "Congratulations on completing the Advance Level course! It's an incredible achievement that demonstrates your dedication and hard work. You've come a long way in your English language journey.",
    "In this final lesson, take a moment to reflect on how much you've learned and how far you've progressed. Your commitment to learning has opened up new opportunities and expanded your horizons.",
    "As you move forward, remember that learning is a lifelong journey. Keep exploring, practicing, and setting new goals. The world is full of possibilities, and your language skills will continue to be a valuable asset. Best wishes for your future endeavors!"
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
        title: Text('Last Lesson'),
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