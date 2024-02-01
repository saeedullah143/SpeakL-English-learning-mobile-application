import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class FamilyImportancePage extends StatefulWidget {
  @override
  _FamilyImportancePageState createState() => _FamilyImportancePageState();
}

class _FamilyImportancePageState extends State<FamilyImportancePage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> paragraphs = [
    "Family is the cornerstone of our lives, providing love, support, and a sense of belonging.",
    "Through good times and bad, our family is always there for us, offering comfort and encouragement.",
    "Families teach us important values and help shape our character, guiding us to become better individuals.",
    "The bonds we share with our family are irreplaceable and provide a strong foundation for our emotional well-being.",
    "Spending quality time with family helps create lasting memories and strengthens our relationships.",
    "In times of crisis, our family is our greatest source of strength, offering unwavering support and understanding.",
    "No matter where life takes us, our family remains a constant source of love, stability, and happiness."
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
        title: Text('Importance of Family'),
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