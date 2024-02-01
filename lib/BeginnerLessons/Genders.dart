import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class GendersPage extends StatefulWidget {
  @override
  State<GendersPage> createState() => _GendersPageState();
}

class _GendersPageState extends State<GendersPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<RelationshipItem> relationships = [
    RelationshipItem('Father', 'https://7esl.com/wp-content/uploads/2018/01/father-150x150.png'),
    RelationshipItem('Mother', 'https://7esl.com/wp-content/uploads/2018/01/mother-150x150.png'),
    RelationshipItem('Brother', 'https://7esl.com/wp-content/uploads/2018/01/brother-150x150.png'),
    RelationshipItem('Sister', 'https://7esl.com/wp-content/uploads/2018/01/sister-150x150.png'),
    RelationshipItem('Grandfather', 'https://7esl.com/wp-content/uploads/2018/01/great-grandfather-150x150.png'),
    RelationshipItem('Grandmother', 'https://7esl.com/wp-content/uploads/2018/01/great-grandmother-150x150.png'),
    RelationshipItem('Uncle', 'https://7esl.com/wp-content/uploads/2018/01/uncle-150x150.png'),
    RelationshipItem('Aunt', 'https://7esl.com/wp-content/uploads/2018/01/aunt-2-150x150.png'),
    RelationshipItem('Husband', 'https://7esl.com/wp-content/uploads/2018/01/husband-150x150.png'),
    RelationshipItem('Wife', 'https://7esl.com/wp-content/uploads/2018/01/wife-150x150.png'),
    RelationshipItem('Cousin', 'https://7esl.com/wp-content/uploads/2018/01/cousin-150x150.png'),
    RelationshipItem('Cousin', 'https://7esl.com/wp-content/uploads/2018/01/cousin-2-150x150.png'),
    RelationshipItem('Nephew', 'https://7esl.com/wp-content/uploads/2018/01/nephew-1-150x150.png'),
    RelationshipItem('Niece', 'https://7esl.com/wp-content/uploads/2018/01/niece-2-150x150.png'),
    RelationshipItem('Son', 'https://7esl.com/wp-content/uploads/2018/01/son-150x150.png'),
    RelationshipItem('Daughter', 'https://7esl.com/wp-content/uploads/2018/01/daughter-150x150.png'),
    RelationshipItem('Grandson', 'https://7esl.com/wp-content/uploads/2018/01/grandson-150x150.png'),
    RelationshipItem('Granddaughter', 'https://7esl.com/wp-content/uploads/2018/01/granddaughter-150x150.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relationship Names'),
      ),
      body: ListView.builder(
        itemCount: relationships.length,
        itemBuilder: (context, index) {
          final relationshipItem = relationships[index];
          return _buildRelationshipCard(relationshipItem);
        },
      ),
    );
  }

  Widget _buildRelationshipCard(RelationshipItem relationshipItem) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            title: Text(relationshipItem.name),
            leading: Image.network(
              relationshipItem.imageUrl,
              width: 70.0,
              height: 70.0,
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => _speakRelationshipName(relationshipItem.name),
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
  void _speakRelationshipName(String name) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(name);
  }
}

class RelationshipItem {
  final String name;
  final String imageUrl;

  RelationshipItem(this.name, this.imageUrl);
}