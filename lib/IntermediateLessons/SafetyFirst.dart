import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SafetyFirstPage extends StatefulWidget {
  @override
  State<SafetyFirstPage> createState() => _SafetyFirstPageState();
}

class _SafetyFirstPageState extends State<SafetyFirstPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> paragraphs = [
    LessonParagraph(
        "Part 1",
        "Safety should always be a top priority in our lives. Whether at home, work, or on the road, taking precautions and being aware of potential risks can prevent accidents and save lives. It's essential to follow safety guidelines, use protective equipment, and stay informed about potential hazards."
    ),
    LessonParagraph(
        "Part 2",
        "In workplaces, safety measures and training are crucial to protect employees from injuries. Safety protocols should never be compromised for the sake of convenience or speed. By fostering a culture of safety, organizations can ensure the well-being of their employees and the success of their operations."
    ),
    LessonParagraph(
        "Part 3",
        "On the road, responsible driving practices such as obeying speed limits, wearing seatbelts, and avoiding distractions are vital for preventing accidents. Safety extends to our daily activities, where simple precautions like using step stools instead of chairs and storing chemicals properly can prevent household accidents."
    ),
    LessonParagraph(
        "Part 4",
        "Remember, safety is not just about rules and regulations; it's about protecting ourselves and those around us. It's a responsibility we all share. So, make safety a habit, and prioritize it in everything you do. By doing so, you contribute to a safer and healthier environment for everyone."
    ),
  ];
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
  Future<void> speakParagraph(String paragraph) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(paragraph);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Safety First"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: paragraphs.length,
        itemBuilder: (context, index) {
          final paragraph = paragraphs[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(paragraph.title, style: TextStyle(fontSize: 24.0),),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(paragraph.text, style: TextStyle(fontSize: 20.0),),
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => speakParagraph(paragraph.text),
            ),
          );
        },
      ),
    );
  }
}

class LessonParagraph {
  final String title;
  final String text;

  LessonParagraph(this.title, this.text);
}