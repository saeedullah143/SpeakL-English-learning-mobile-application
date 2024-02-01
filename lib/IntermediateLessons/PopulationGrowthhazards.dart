import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class PopulationGrowthPage extends StatefulWidget {
  @override
  State<PopulationGrowthPage> createState() => _PopulationGrowthPageState();
}

class _PopulationGrowthPageState extends State<PopulationGrowthPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<LessonParagraph> paragraphs = [
    LessonParagraph(
        "Part 1",
        "Population growth is a significant global issue that has both advantages and hazards. While it can lead to economic development and innovation, it also poses challenges such as increased resource consumption, environmental degradation, and strain on infrastructure."
    ),
    LessonParagraph(
        "Part 2",
        "Overpopulation can lead to food and water shortages, inadequate healthcare, and crowded living conditions. It can also exacerbate issues like pollution, climate change, and loss of biodiversity. Managing population growth and ensuring sustainable practices are essential for a better future."
    ),
    LessonParagraph(
        "Part 3",
        "Addressing the hazards of population growth requires a multi-faceted approach, including access to family planning and education, promoting sustainable resource management, and implementing policies that support responsible population growth. It's a challenge that requires global cooperation and commitment."
    ),
    LessonParagraph(
        "Part 4",
        "Ultimately, finding a balance between population growth and sustainable development is crucial. By addressing the hazards associated with overpopulation and adopting responsible practices, we can strive for a world where every individual has a better quality of life while preserving our planet for future generations."
    ),
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
        title: Text("Hazards of Population Growth"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: paragraphs.length,
        itemBuilder: (context, index) {
          final paragraph = paragraphs[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(paragraph.title,style: TextStyle(fontSize: 24.0),),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(paragraph.text,style: TextStyle(fontSize: 20.0),),
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => speakParagraph(paragraph.text),
            ),
          );
        },
      ),
    );
  }
}

class LessonParagraph {
  final String title;
  final String text;

  LessonParagraph(this.title, this.text);
}