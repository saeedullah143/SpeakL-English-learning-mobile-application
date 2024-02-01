import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MotherLovePage extends StatefulWidget {
  @override
  State<MotherLovePage> createState() => _MotherLovePageState();
}

class _MotherLovePageState extends State<MotherLovePage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> paragraphs = [
    "Dear child, as you embark on your journey through life, always remember that you are deeply loved. From the moment you were born, my heart has been filled with an indescribable love for you.",
    "Life will present its challenges and joys, but know that I am here to support you through every step. Your successes will be my victories, and your sorrows will be my burdens.",
    "Never forget the values I've tried to instill in you - kindness, compassion, honesty, and resilience. These qualities will guide you on the path of righteousness.",
    "As you grow, you will encounter many people who will influence your life. Choose your companions wisely, and surround yourself with those who uplift and inspire you.",
    "Education is a precious gift, and I hope you'll always have a thirst for knowledge. It will empower you to chase your dreams and make a positive impact on the world.",
    "No matter where life takes you, our bond will remain unbreakable. My love for you knows no boundaries, and I will always be your biggest cheerleader.",
    "With each passing day, you are becoming the remarkable person I always knew you could be. Never doubt yourself, and remember that you carry my love with you, always."
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
        title: Text('Mother\'s Love'),
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