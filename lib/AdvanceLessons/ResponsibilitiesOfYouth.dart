import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


class YouthResponsibilitiesPage extends StatefulWidget {
  @override
  State<YouthResponsibilitiesPage> createState() => _YouthResponsibilitiesPageState();
}

class _YouthResponsibilitiesPageState extends State<YouthResponsibilitiesPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> responsibilities = [
    "As a young individual, it is your responsibility to actively participate in the betterment of your community. This includes volunteering for community service projects and initiatives.",
    "You should focus on your education and personal development. Strive for excellence in your studies and pursue lifelong learning.",
    "Respect for elders and authority figures is essential. Show gratitude and humility in your interactions with them.",
    "Be a responsible citizen by obeying the law, paying taxes, and participating in the democratic process through voting and civic engagement.",
    "Promote tolerance and diversity. Embrace differences and work to eliminate discrimination and prejudice in your community.",
    "Take care of your physical and mental health. Regular exercise, a balanced diet, and seeking help when needed are crucial.",
    "Play a role in environmental conservation. Reduce waste, conserve resources, and support eco-friendly initiatives."
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
        title: Text("Youth Responsibilities"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: responsibilities.length,
        itemBuilder: (context, index) {
          final paragraph = responsibilities[index];
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