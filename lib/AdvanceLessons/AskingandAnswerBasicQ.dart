import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class AskingQuestionsPage extends StatefulWidget {
  @override
  State<AskingQuestionsPage> createState() => _AskingQuestionsPageState();
}

class _AskingQuestionsPageState extends State<AskingQuestionsPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<Section> sections = [
    Section(
      title: "Personal Information Questions",
      content: [
        "Question: What's your name?",
        "Answer: Jason.",
        "Question: Where are you from?",
        "Answer: I'm from Manchester.",
        "Question: Where do you come from?",
        "Answer: I come from London.",
        "Question: What is your surname?",
        "Answer: Smith.",
        "Question: What is your family name?",
        "Answer: Bean.",
        "Question: What's your first name?",
        "Answer: John.",
        "Question: What's your address?",
        "Answer: 13 Oxford Street.",

      ],
    ),
    Section(
      title: "Introducing Yourself and Saying Hello",
      content: [
        "How do you do?",
        "How do you do. Pleased to meet you.",
        "How are you?",
        "Fine, thanks. And you?",
      ],
    ),
    Section(
      title: "Shopping Questions",
      content: [
        "Question: How can I help you? or May I help you?",
        "Answer: Yes. I'm looking for a sweater.",
        "Question: Can I try it on?",
        "Answer: Sure, the changing rooms are over there.",
        "Question: How much does it cost? or How much is it?",
        "Answer: It's 45 dollar.",
        "Question: How would you like to pay?",
        "Answer: By cash.",
      ],
    ),
    Section(
      title: "Asking Something Specific Questions",
      content: [
        "What's that?",
        "It's a dog!",
        "What time is it?",
        "It's one o'clock.",
        "Can or May I open the window?",
        "Certainly. It's very hot in the office today!",
        "Is there a bakery or market or bank or etc. near here?",
        "Where is the nearest bakery or market or bank or etc.?",
      ],
    ),
    Section(
      title: "Questions Using the Word 'Like'",
      content: [
        "What do you like?",
        "I like playing cricket, reading, and listening to pop music.",
        "What does she look like?",
        "She's tall and slim with blond hair.",
        "What would you like to eat?",
        "I'd like a steak and chips and a salad.",
        "What is it like?",
      ],
    ),
    Section(
      title: "Asking for an Opinion",
      content: [
        "What's it about?",
        "It's about a young girl who has many adventures.",
        "What do you think about your job or that book etc.?",
        "I thought the book was very interesting.",
        "How big or far or difficult or easy is it?",
        "The test was very difficult, but I think I did OK!",
      ],
    ),
    Section(
      title: "Suggestions",
      content: [
        "What shall we do today or this morning or afternoon or evening?",
        "Let's go see a movie.",
        "Why don't we go out or play football or visit some old friends or etc. this afternoon?",
        "Yes, that sounds like a great idea.",
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
        title: Text("Introducing Yourself"),
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