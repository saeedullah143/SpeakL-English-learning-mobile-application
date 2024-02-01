import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HisFirstFlightPage extends StatefulWidget {
  @override
  State<HisFirstFlightPage> createState() => _HisFirstFlightPageState();
}

class _HisFirstFlightPageState extends State<HisFirstFlightPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> storyParagraphs = [
    "Once upon a time, in a lush green forest, a young bird named Sammy lived with his family.",
    "Sammy was eager to learn how to fly, but he was still too young and inexperienced.",
    "Every day, he watched his parents and older siblings soar through the sky with grace and freedom.",
    "One sunny morning, Sammy decided it was time for his first flight. He climbed up to a high branch and spread his wings.",
    "With a deep breath, Sammy leaped into the air, flapping his wings as hard as he could.",
    "For a moment, it felt like he was flying, but soon, he began to fall, and his heart filled with fear.",
    "Fortunately, Sammy's father swooped down and caught him just in time, saving him from a disastrous fall."
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
        title: Text('His First Flight'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: storyParagraphs.length,
        itemBuilder: (context, index) {
          final paragraph = storyParagraphs[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                paragraph,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => speakParagraph(paragraph),
            ),
          );
        },
      ),
    );
  }
}