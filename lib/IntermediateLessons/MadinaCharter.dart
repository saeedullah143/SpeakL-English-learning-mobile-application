import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MadinaCharterPage extends StatefulWidget {
  @override
  State<MadinaCharterPage> createState() => _MadinaCharterPageState();
}

class _MadinaCharterPageState extends State<MadinaCharterPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> paragraphs = [
    LessonParagraph(
        "Part 1",
        "The Madina Charter, also known as the Constitution of Madinah, was a significant document in the history of Islam. It was drafted by the Prophet Muhammad (peace be upon him) after his migration to Madinah in 622 CE. The charter aimed to establish a peaceful and just society in Madinah, uniting the Muslim and non-Muslim communities living there. It is considered one of the earliest constitutions in human history and a model for religious tolerance and coexistence."
    ),
    LessonParagraph(
        "Part 2",
        "The Madina Charter outlined the rights and responsibilities of all residents of Madinah, irrespective of their religious or tribal affiliations. It granted religious freedom and protected the rights of minorities. It also established a system of mutual cooperation and collective security. The charter's principles of justice, equality, and inclusivity continue to inspire discussions on citizenship, religious tolerance, and coexistence in contemporary times."
    ),
    LessonParagraph(
        "Part 3",
        "The Madina Charter is a testament to the Prophet Muhammad's (peace be upon him) vision of a just and harmonious society. It serves as a historical example of how diverse communities can live together in peace, respecting each other's beliefs and upholding the principles of justice and compassion. The charter's principles remain relevant today, promoting the values of tolerance and understanding in a diverse world."
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
        title: Text("Madina Charter"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: paragraphs.length,
        itemBuilder: (context, index) {
          final paragraph = paragraphs[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(paragraph.title,style: TextStyle(fontSize: 24.0),),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(paragraph.text,style: TextStyle(fontSize: 20.0),),
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