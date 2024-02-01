import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class WorldIsTooMuchPage extends StatefulWidget {
  @override
  _WorldIsTooMuchPageState createState() => _WorldIsTooMuchPageState();
}

class _WorldIsTooMuchPageState extends State<WorldIsTooMuchPage> {
  final FlutterTts flutterTts = FlutterTts();

  final String poemText = """
    The world is too much with us; late and soon,
    Getting and spending, we lay waste our powers;
    Little we see in Nature that is ours;
    We have given our hearts away, a sordid boon!
    This Sea that bares her bosom to the moon;
    The winds that will be howling at all hours,
    And are up-gathered now like sleeping flowers;
    For this, for everything, we are out of tune;
    It moves us not. Great God! I’d rather be
    A Pagan suckled in a creed outworn;
    So might I, standing on this pleasant lea,
    Have glimpses that would make me less forlorn;
    Have sight of Proteus rising from the sea;
    Or hear old Triton blow his wreathed horn
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
        title: Text('World is With Us'),
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