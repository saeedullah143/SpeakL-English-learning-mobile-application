import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TheBladsofgrassPage extends StatefulWidget {
  @override
  State<TheBladsofgrassPage> createState() => _TheBladsofgrassPageState();
}

class _TheBladsofgrassPageState extends State<TheBladsofgrassPage> {
  final FlutterTts flutterTts = FlutterTts();

  final String poem = """
In heaven.
Some little blades of grass
Stood before God.
“What did you do?”
Then all the save one of little blades
Began eagerly to relate
The merits of their lives
This one stayed a small way behind,
Ashamed.
Presently, God said,
“And what did you do?”
Then little blade answered, “oh, my Lord,
Memory is bitter to me,
For, if I did good deeds,
I know not of them.”
Then God, in all his splendor,
Arose from his throne
“Oh, best little blade of grass!” he said.
""";

  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
  Future<void> speakPoem() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(poem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blades of Grass'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                poem,
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              IconButton(
                icon: Icon(Icons.volume_up),
                onPressed: () => speakPoem(),
                iconSize: 48.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}