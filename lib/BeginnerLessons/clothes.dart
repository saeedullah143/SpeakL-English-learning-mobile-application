import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ClothesPage extends StatefulWidget {
  @override
  State<ClothesPage> createState() => _ClothesPageState();
}

class _ClothesPageState extends State<ClothesPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<ClothingItem> clothingItems = [
    ClothingItem(name: 'Skirt', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/skirt-150x150.png'),
    ClothingItem(name: 'Dress pants', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/dress-pants-150x150.png'),
    ClothingItem(name: 'Jumper', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/jumper-150x150.png'),
    ClothingItem(name: 'Sneakers', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/sneakers-150x150.png'),
    ClothingItem(name: 'Hoodie', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/hoodie-150x150.png'),
    ClothingItem(name: 'Vest', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/vest-2-150x150.png'),
    ClothingItem(name: 'High heels', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/high-heels-150x150.png'),
    ClothingItem(name: 'Flip flops', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/flip-flops-150x150.png'),
    ClothingItem(name: 'Handbag', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/handbag-150x150.png'),
    ClothingItem(name: 'Tank top', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/tank-top-150x150.png'),
    ClothingItem(name: 'Singlet', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/singlet-150x150.png'),
    ClothingItem(name: 'Boots', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/combat-boots-150x150.png'),
    ClothingItem(name: 'Shorts', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/shorts-150x150.png'),
    ClothingItem(name: 'Polo shirt', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/polo-shirt-150x150.png'),
    ClothingItem(name: 'Dress', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/dress-150x150.png'),
    ClothingItem(name: 'Hawaiian shirt', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Hawaiian-shirt-150x150.png'),
    ClothingItem(name: 'Mittens', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/mittens-1-150x150.png'),
    ClothingItem(name: 'Socks', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/socks-150x150.png'),
    ClothingItem(name: 'Swimsuit', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/swimming-costume-2-150x150.png'),
    ClothingItem(name: 'Trench coat', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/trench-coat-women-150x150.png'),
    ClothingItem(name: 'Winter coat', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/coat-150x150.png'),
    ClothingItem(name: 'Straw hat', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/sunbonnet-1-150x150.png'),
    ClothingItem(name: 'Cap', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/cap-150x150.png'),
    ClothingItem(name: 'Scarf', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/scarf-2-150x150.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clothing Items'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: clothingItems.length,
        itemBuilder: (context, index) {
          final item = clothingItems[index];
          return _buildClothingItem(item);
        },
      ),
    );
  }

  Widget _buildClothingItem(ClothingItem item) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
            item.imageUrl,
            width: 120.0, // Adjust the width as needed
            height: 120.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              item.name,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.volume_up),
            onPressed: () => _speakClothingItemName(item.name),
          ),
        ],
      ),
    );
  }
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  void _speakClothingItemName(String itemName) async {
    await flutterTts.setLanguage('en-US'); // Set the language (you can change this)
    await flutterTts.speak(itemName);
  }
}

class ClothingItem {
  final String name;
  final String imageUrl;

  ClothingItem({
    required this.name,
    required this.imageUrl,
  });
}