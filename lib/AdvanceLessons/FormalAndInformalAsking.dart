import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class FormalandinformalPage extends StatefulWidget {
  @override
  State<FormalandinformalPage> createState() => _FormalandinformalPageState();
}

class _FormalandinformalPageState extends State<FormalandinformalPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<Section> sections = [
    Section(
      title: "How to Ask Someone If They Want Something",
      content: [
        "When asking someone if they want something, say 'Would you like.'",
        "It is more polite than saying 'Do you want something.'",
        "Formal: Would you like a sandwich?",
        "Informal: Do you want a sandwich?",
        "Very informal: Sandwich.",
        "Formal: Yes, please. or No, thank you.",
        "Informal: Yes, I'd like some. or No, thanks.",
        "Very informal: I'd love one. or No.",
      ],
    ),
    Section(
      title: "How to Accept a Cup of Coffee and Specify Preferences",
      content: [
        "Learning how to accept a cup of coffee:",
        "Would you like a cup of coffee?",
        "Formal: Would you like a coffee?",
        "Informal: Do you want a coffee?",
        "Very informal: Coffee.",
        "Formal: Yes, please. or No, thank you.",
        "Informal: Yes, I'd like some. or No, thanks.",
        "Very informal: I'd love one. or No.",
        "Saying how you would like your coffee:",
        "Black with sugar, please.",
        "White, no sugar, please.",
        "White with sugar, please.",
        "Black, no sugar, please.",
        "A little milk, but no sugar, please.",
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
        title: Text("Questioning Politely"),
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
                    },
                  ),
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