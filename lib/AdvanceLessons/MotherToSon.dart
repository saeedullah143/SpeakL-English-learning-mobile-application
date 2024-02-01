import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MotherToSonPage extends StatefulWidget {
  @override
  _MotherToSonPageState createState() => _MotherToSonPageState();
}

class _MotherToSonPageState extends State<MotherToSonPage> {
  final FlutterTts flutterTts = FlutterTts();

  final String poemText = """
    Well, son, I'll tell you:
    Life for me ain't been no crystal stair.
    It's had tacks in it,
    And splinters,
    And boards torn up,
    And places with no carpet on the floor—
    Bare.
    But all the time
    I's been a-climbing' on,
    And reaching' landing's,
    And turning' corners,
    And sometimes going' in the dark
    Where there ain't been no light.
    So, boy, don't you turn back.
    Don't you set down on the steps.
    'Cause you finds it's kinder hard.
    Don't you fall now—
    For I's still goin', honey,
    I's still climbing',
    And life for me ain't been no crystal stair.
    """;

  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
  Future<void> speakPoem() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(poemText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mother to Son'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                poemText,
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => speakPoem(),
              iconSize: 48.0,
            ),
          ],
        ),
      ),
    );
  }
}