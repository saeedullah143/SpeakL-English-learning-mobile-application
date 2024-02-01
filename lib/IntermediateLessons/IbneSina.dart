import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class IbnSinaPage extends StatefulWidget {
  @override
  State<IbnSinaPage> createState() => _IbnSinaPageState();
}

class _IbnSinaPageState extends State<IbnSinaPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> paragraphs = [
    LessonParagraph(
        "Part 1",
        "Ibn Sina, also known as Avicenna, was a remarkable Persian polymath who lived in the 10th and 11th centuries. He made significant contributions to various fields, including medicine, philosophy, astronomy, mathematics, and more. Ibn Sina's most famous work, 'The Canon of Medicine,' became a standard textbook in Europe and the Islamic world for centuries. His dedication to knowledge and the pursuit of wisdom has left a lasting legacy in the world of science and philosophy."
    ),
    LessonParagraph(
        "Part 2",
        "In addition to his medical and scientific achievements, Ibn Sina was also a philosopher and scholar. His writings on metaphysics, ethics, and philosophy had a profound influence on both Islamic and Western thought. Ibn Sina's emphasis on reason, observation, and the importance of understanding the natural world laid the foundation for the development of modern science and philosophy. He remains an inspirational figure, celebrated for his intellectual curiosity and contributions to human knowledge."
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
        title: Text("Ibn Sina"),
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