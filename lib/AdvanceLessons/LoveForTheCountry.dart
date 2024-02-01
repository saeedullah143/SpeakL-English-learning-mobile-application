import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class LoveForCountryPage extends StatefulWidget {
  @override
  _LoveForCountryPageState createState() => _LoveForCountryPageState();
}

class _LoveForCountryPageState extends State<LoveForCountryPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> paragraphs = [
    "Love for one's country is a deep and abiding affection that transcends boundaries and unites people in a common purpose. It is the foundation of patriotism and the driving force behind a nation's progress.",
    "When we love our country, we are committed to its well-being and development. We take pride in its culture, history, and achievements, and we strive to contribute to its growth.",
    "A deep love for one's country inspires acts of service and sacrifice. It motivates individuals to protect their homeland and preserve its values and traditions.",
    "True patriotism goes beyond mere words; it is demonstrated through our actions. It is the willingness to defend our country in times of need and to work towards its prosperity in times of peace.",
    "Love for the country fosters a sense of unity and belonging among its citizens. It encourages us to set aside our differences and work together for the greater good.",
    "As we express our love for our country, let us remember that it is not blind allegiance but a thoughtful commitment to its ideals. We must strive to make our nation better for future generations.",
    "In times of adversity, the love for our country shines brightest. It is a source of strength that empowers us to overcome challenges and emerge stronger than before."
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
        title: Text('Love For the Country'),
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