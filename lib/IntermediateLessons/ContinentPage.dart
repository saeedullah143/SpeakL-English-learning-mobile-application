import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ContinentPage extends StatefulWidget {
  @override
  State<ContinentPage> createState() => _ContinentPageState();
}

class _ContinentPageState extends State<ContinentPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<ContinentItem> continents = [
    ContinentItem(
      'Continent',
      'A continent is one of several main land areas on Earth. There are seven continents in total. Continents can seem confusing as some are joined to each other, while others are completely surrounded by water. Some continents have a lot of countries inside them, and some only contain a few.\nThere are Seven Continents in the world',
    ),
    ContinentItem(
      'Africa',
      'Africa has the world\'s longest river, which is called The Nile. The world\'s largest desert is named the Sahara. Africa has more countries than any of the other continents. Almost all of the world\'s gold and diamonds have come from Africa.',
    ),
    ContinentItem(
      'Antarctica',
      'Antarctica is completely covered in ice and is the only continent that is. It is the only continent that is uninhabited by humans. Scientists live there for short periods of time while they are doing their research.',
    ),
    ContinentItem(
      'Asia',
      'Asia is the only continent that is joined to two others. It contains the world\'s biggest population (China). The highest point on Earth you can find is Mount Everest. It is the only continent where you can find tigers in the wild.',
    ),
    ContinentItem(
      'Europe',
      'At one time Europe has ruled almost all of the rest of the world. Europe has been the starting point of both the World Wars.',
    ),
    ContinentItem(
      'North America',
      'North America is also joined to Asia but only by ice in winter (Bering Sea). It is the only continent that is completely in the Northern and Western Hemispheres. It has the world\'s tallest mountain which is named Mount Kea. It contains the world\'s largest fresh water lake named Lake Superior.',
    ),
    ContinentItem(
      'Oceania',
      'Oceania has the least countries, which are Australia, New Zealand, and Papua New Guinea. There are more sheep than people in this continent. Oceania is the only continent that lies entirely in the Southern and Eastern Hemispheres.',
    ),
    ContinentItem(
      'South America',
      'South America has the world\'s southernmost city, which is called Punta Arenas. It has the world\'s largest river system and possibly the most famous (The Amazon).',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Continents'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: continents.length,
        itemBuilder: (context, index) {
          final continentItem = continents[index];
          return _buildContinentCard(continentItem);
        },
      ),
    );
  }

  Widget _buildContinentCard(ContinentItem continentItem) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            title: Text(continentItem.name, style: TextStyle(fontSize: 24.0),),
            subtitle: Text(continentItem.definition, style: TextStyle(fontSize: 20.0),),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => _speakDefinition(continentItem.definition),
            ),
          ),
        ],
      ),
    );
  }
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
  void _speakDefinition(String definition) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(definition);
  }
}

class ContinentItem {
  final String name;
  final String definition;

  ContinentItem(this.name, this.definition);
}