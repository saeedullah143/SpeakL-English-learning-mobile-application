import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ShapesPage extends StatefulWidget {
  @override
  State<ShapesPage> createState() => _ShapesPageState();
}

class _ShapesPageState extends State<ShapesPage> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning English Shapes'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          _buildShapeCard(
            'Triangle',
            'The roof of a house is shaped like a triangle. The roof is triangular.',
            imageUrl:
            'https://englishtivi.com/wp-content/uploads/2022/06/Triangle.png', // Replace with actual image URL
          ),
          _buildShapeCard(
            'Circle',
            'The football on the floor is shaped like a circle. The ball is circular.',
            imageUrl:
            'https://englishtivi.com/wp-content/uploads/2022/06/Circle.png.webp', // Replace with actual image URL
          ),
          _buildShapeCard(
            'Rectangle',
            'That table in the living room is shaped like a rectangle. The table is rectangular.',
            imageUrl:
            'https://englishtivi.com/wp-content/uploads/2022/06/Rectangle-1.png', // Replace with actual image URL
          ),
          _buildShapeCard(
            'Heart',
            'The box I got my birthday present in is shaped like a heart. My box is heart-shaped.',
            imageUrl:
            'https://englishtivi.com/wp-content/uploads/2022/06/Heart-1.png', // Replace with actual image URL
          ),
          _buildShapeCard(
            'Square',
            'The picture on the wall is shaped like a square. The picture is square.',
            imageUrl:
            'https://englishtivi.com/wp-content/uploads/2022/06/Square.png', // Replace with actual image URL
          ),
          _buildShapeCard(
            'Oval',
            'The rug in the bedroom is shaped like an oval. The rug is oval.',
            imageUrl:
            'https://englishtivi.com/wp-content/uploads/2022/06/Oval.png.webp', // Replace with actual image URL
          ),
          _buildShapeCard(
            'Star',
            'The little girl has a star-shaped pillow on her bed. The pillow is star-shaped.',
            imageUrl:
            'https://englishtivi.com/wp-content/uploads/2022/06/Star.png', // Replace with actual image URL
          ),
          _buildShapeCard(
            'Diamond',
            'The ornament on the tree is shaped like a diamond. The ornament is diamond-shaped.',
            imageUrl:
            'https://englishtivi.com/wp-content/uploads/2022/06/Diamond.png', // Replace with actual image URL
          ),
          _buildShapeCard(
            'Octagon',
            'The road sign at the end of my street is shaped like an octagon. The road sign is octagonal.',
            imageUrl:
            'https://englishtivi.com/wp-content/uploads/2022/06/Octagon.png.webp', // Replace with actual image URL
          ),
        ],
      ),
    );
  }

  Widget _buildShapeCard(String shapeName, String description, {String? imageUrl}) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              shapeName,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            if (imageUrl != null)
              Image.network(
                imageUrl,
                width: 120.0, // Adjust the width as needed
                height: 120.0, // Adjust the height as needed
              ),
            SizedBox(height: 16.0),
            IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => _speakShapeName(shapeName),
            ),
          ],
        ),
      ),
    );
  }
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> _speakShapeName(String shapeName) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(shapeName);
  }
}