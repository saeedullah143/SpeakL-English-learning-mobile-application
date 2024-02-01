import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ChoiceOfCareerPage extends StatefulWidget {
  @override
  _ChoiceOfCareerPageState createState() => _ChoiceOfCareerPageState();
}

class _ChoiceOfCareerPageState extends State<ChoiceOfCareerPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> paragraphs = [
    "Choosing a career is one of the most important decisions in a person's life. It determines the path you will take for a significant part of your future.",
    "When choosing a career, it's essential to consider your interests and passions. What are you genuinely enthusiastic about? What activities make you come alive?",
    "Skills and talents also play a crucial role in career choice. Identify your strengths and areas where you excel. A career that aligns with your skills is likely to be more fulfilling.",
    "Consider the education and training required for your chosen career. Some professions demand specific qualifications, while others value experience and expertise.",
    "Think about the job market and industry trends. Is your chosen career in demand? Will there be opportunities for growth and advancement?",
    "It's important to strike a balance between passion and practicality. While following your dreams is essential, it's also crucial to choose a career that provides financial stability.",
    "Ultimately, the choice of career should align with your values and long-term goals. It should be something that brings you joy and a sense of purpose.",
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
        title: Text('Choice of Career'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: paragraphs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                paragraphs[index],
                style: TextStyle(fontSize: 20.0),
              ),
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