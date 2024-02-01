import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SelfIntroductionPage extends StatefulWidget {
  @override
  State<SelfIntroductionPage> createState() => _SelfIntroductionPageState();
}

class _SelfIntroductionPageState extends State<SelfIntroductionPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<Section> sections = [
    Section(
      title: "Introducing Yourself",
      content: [
        "Can I introduce myself? My name’s Sarah.",
        "May I introduce myself? My name’s Simon.",
        "Let me introduce myself. My name’s Paul.",
        "I’d like to introduce myself. I’m David.",
        "I don’t think we’ve met. I’m Jason.",
      ],
    ),
    Section(
      title: "Introducing Someone Else",
      content: [
        "May I introduce myself? I introduce a good friend of mine? This is Simon. Have you met Simon?",
        "Can I introduce myself? I introduce a good friend of mine? This is Rod. Have you met Rod?",
        "I’d like you to meet John.",
        "I want you to meet Ronaldo.",
      ],
    ),
    Section(
      title: "Making Contact with Someone You Don't Know",
      content: [
        "Excuse me, are you Mrs. Smith? (how to answer) Yes, that’s right.",
        "Hello, you must be Mrs. Jones.",
        "You are Mr. Bean, aren’t you?",
        "Have we met before?",
      ],
    ),
  ];
  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> speakText(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Words for Introduction"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: sections.length,
        itemBuilder: (context, index) {
          final section = sections[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  section.title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...section.content.map((text) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.volume_up),
                    onPressed: () {
                      speakText(text);
                      }),
                );
              }).toList(),
            ],
          );
        },
      ),
    );
  }
}

class Section {
  final String title;
  final List<String> content;

  Section({required this.title, required this.content});
}