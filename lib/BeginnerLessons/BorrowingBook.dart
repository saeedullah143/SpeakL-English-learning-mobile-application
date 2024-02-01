import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class BorrowingBookPage extends StatefulWidget {
  @override
  State<BorrowingBookPage> createState() => _BorrowingBookPageState();
}

class _BorrowingBookPageState extends State<BorrowingBookPage> {
  final FlutterTts flutterTts = FlutterTts();

  final DialogLine borrowingParagraph = DialogLine(
      "Friend 1",
      "Guess what? I asked my friend if I could borrow a book, and they said yes! "
          "I'm so happy because the book is about an exciting adventure. "
          "I promised my friend that I'll take good care of the book and keep it safe. "
          "I can't wait to start reading and go on the adventure in the story. "
          "And of course, I'll give it back when I'm done so my friend can enjoy the story too!"
  );
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
        title: Text('Borrowing a Book'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0,top: 35.0, right: 16.0, bottom: 16.0),
              child: Text(borrowingParagraph.text, style: TextStyle(fontSize: 20.0,),),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: IconButton(
                icon: Icon(Icons.volume_up),
                onPressed: () => speakLine(borrowingParagraph.text),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DialogLine {
  final String speaker;
  final String text;

  DialogLine(this.speaker, this.text);
}