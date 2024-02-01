import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class GoingToMarketPage extends StatefulWidget {
  @override
  State<GoingToMarketPage> createState() => _GoingToMarketPageState();
}

class _GoingToMarketPageState extends State<GoingToMarketPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<DialogLine> dialogue = [
    DialogLine("Father", "Good morning, son! Are you happy about coming to the market with me?"),
    DialogLine("Son", "Yes, Dad! I want to see the fruits and vegetables."),
    DialogLine("Father", "We will buy fresh fruits. What's your favorite?"),
    DialogLine("Son", "I like apples and bananas, Dad!"),
    DialogLine("Father", "Good choice! We will get some of those. Do you want more?"),
    DialogLine("Son", "Yes, maybe some strawberries too, please!"),
    DialogLine("Father", "Okay! We will make a tasty fruit salad at home."),
    DialogLine("Son", "Yay! I am excited!"),
  ];

  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> speakLine(String line) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(line);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market Conversation'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: dialogue.length,
        itemBuilder: (context, index) {
          final line = dialogue[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 35.0),
              child: Text(line.text, style: TextStyle(
                fontSize: 20.0
              ),),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: IconButton(
                icon: Icon(Icons.volume_up),
                onPressed: () => speakLine(line.text),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DialogLine {
  final String speaker;
  final String text;

  DialogLine(this.speaker, this.text);
}