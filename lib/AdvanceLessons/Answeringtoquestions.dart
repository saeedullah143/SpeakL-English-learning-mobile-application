import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class AnsweringPage extends StatefulWidget {
  @override
  State<AnsweringPage> createState() => _AnsweringPageState();
}

class _AnsweringPageState extends State<AnsweringPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<ResponseSection> sections = [
    ResponseSection(
      heading: "You can say",
      phrases: [
        "Yes",
        "No",
        "I don't know",
        "Not sure",
      ],
    ),
    ResponseSection(
      heading: "Instead of yes, you can say",
      phrases: [
        "Yes I can",
        "Yes, sure thing",
        "Yes of course",
        "Of course I will",
        "Sure. It's 10am",
        "Sure thing",
        "I can certainly do that for you",
        "Yes here you go",
        "Sure, here you go",
        "OK I will",
        "Yes definitely",
      ],
    ),
    ResponseSection(
      heading: "Instead of no, you can say",
      phrases: [
        "Of course not",
        "I'm afraid I still can't",
        "I'm afraid I don't know",
        "I'm not sure",
      ],
    ),
  ];
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
  Future<void> speakResponse(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answering Politely'),
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
                  section.heading,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ...section.phrases.map((phrase) {
                return ListTile(
                  title: Text(phrase, style: TextStyle(fontSize: 16.0),),
                  trailing: IconButton(
                    icon: Icon(Icons.volume_up),
                    onPressed: () => speakResponse(phrase),
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

class ResponseSection {
  final String heading;
  final List<String> phrases;

  ResponseSection({required this.heading, required this.phrases});
}