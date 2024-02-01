import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class OrderingPage extends StatefulWidget {
  @override
  State<OrderingPage> createState() => _OrderingPageState();
}

class _OrderingPageState extends State<OrderingPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<Section> sections = [
    Section(
      title: "Ordering in Restaurants",
      content: [
        "What the waiter or waitress will ask you when ordering drinks:",
        "1. What drinks can I get you?",
        "2. What drinks do you all want?",
        "3. What drinks would you like?",
        "4. What will it be?",
        "5. What drinks do you all want?",
        "6. May I get you some drinks?",
      ],
    ),
    Section(
      title: "Asking for Specials",
      content: [
        "Do you have any specials today?",
        "And if they do, what they might say:",
        "1. We have a guest beer which is £2.00 a pint.",
        "2. Every day we have pitchers of any beer for £5.00.",
      ],
    ),
    Section(
      title: "Ordering More Drinks",
      content: [
        "After drinking your first pints, shots, or whatever drink, someone or yourself will want to buy another round of drinks.",
        "Hint: A round is someone buying drinks for everyone else. Normally, everyone takes turns in buying drinks.",
        "Questions you might hear:",
        "1. Is it my round?",
        "2. It's my round. What's everyone having?",
        "3. Who's round is it?",
        "4. Thanks. I'll get the next round.",
        "How to respond to the questions above:",
        "1. Yes, John, it's your round!",
        "2. Same again, Gary. 6 Stella's.",
        "3. It's Peter's round.",
        "What the waiter or waitress might say:",
        "Do you all want the same drinks?",
        "Same thing?",
        "'Five Stella's again?",
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
        title: Text("Ordering Something"),
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