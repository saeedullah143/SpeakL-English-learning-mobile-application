import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class VegetablePage extends StatefulWidget {
  @override
  State<VegetablePage> createState() => _VegetablePageState();
}

class _VegetablePageState extends State<VegetablePage> {
  final List<VegetableItem> vegetables = [
    VegetableItem('Cucumber', 'https://muftilm.com/wp-content/uploads/2023/07/Cucumber-300x190.png'),
    VegetableItem('Cauliflower', 'https://muftilm.com/wp-content/uploads/2023/07/cauliflower-300x225.png'),
    VegetableItem('Carrot', 'https://muftilm.com/wp-content/uploads/2023/07/Carrot-300x142.webp'),
    VegetableItem('Bell Pepper', 'https://muftilm.com/wp-content/uploads/2023/07/Bellpepper-300x267.png'),
    VegetableItem('Tomato', 'https://muftilm.com/wp-content/uploads/2023/07/Tomato-300x300.webp'),
    VegetableItem('Spinach', 'https://muftilm.com/wp-content/uploads/2023/07/Bok-Choy-300x300.webp'),
    VegetableItem('Bitter gourd', 'https://muftilm.com/wp-content/uploads/2023/07/Bitter-ground-300x210.webp'),
    VegetableItem('Pumpkin', 'https://muftilm.com/wp-content/uploads/2023/07/pumpkin-300x290.png'),
    VegetableItem('Potato', 'https://www.gardentips360.co.uk/wp-content/uploads/2022/01/Untitled-design37-300x300.jpg'),
    VegetableItem('Onion', 'https://muftilm.com/wp-content/uploads/2023/07/Onion-268x300.png'),
    VegetableItem('Ginger', 'https://muftilm.com/wp-content/uploads/2023/07/Ginger-300x300.webp'),
    VegetableItem('Chilli pepper', 'https://muftilm.com/wp-content/uploads/2023/07/Chili-300x300.png'),
    VegetableItem('Broccoli', 'https://muftilm.com/wp-content/uploads/2023/07/Broccoli-300x271.webp'),
    VegetableItem('Mushroom', 'https://muftilm.com/wp-content/uploads/2023/07/Mushroom-300x291.webp'),
    VegetableItem('Green Garlic', 'https://muftilm.com/wp-content/uploads/2023/07/Leek-300x209.png'),
    VegetableItem('Eggplant', 'https://muftilm.com/wp-content/uploads/2023/07/Egg-Plant-300x190.png'),
    VegetableItem('Lettuce', 'https://muftilm.com/wp-content/uploads/2023/07/lettuce-300x300.png'),
    VegetableItem('Peas', 'https://muftilm.com/wp-content/uploads/2023/07/Peas-300x200.png'),
    VegetableItem('Sweet Potato', 'https://muftilm.com/wp-content/uploads/2023/07/sweet-potato1-300x207.webp'),
    VegetableItem('Radish', 'https://muftilm.com/wp-content/uploads/2023/07/Beet-root-300x275.png'),
    VegetableItem('Zucchini', 'https://muftilm.com/wp-content/uploads/2023/07/zuchini-300x222.png'),
    VegetableItem('Garlic', 'https://www.gardentips360.co.uk/wp-content/uploads/2022/01/Untitled-design45-300x300.jpg'),
  ];

  final FlutterTts flutterTts = FlutterTts();

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> speakVegetableName(String name) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vegetable Names'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: vegetables.length,
        itemBuilder: (context, index) {
          final vegetableItem = vegetables[index];
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.all(8.0),
            child: Column(
                children: [
                  Image.network(
                    vegetableItem.imageURL,
                    width: 120,
                    height: 120,
                  ),
                  Text(vegetableItem.name,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.volume_up),
                    onPressed: () => speakVegetableName(vegetableItem.name),
                  ),
                ]),
          );
        },
      ),
    );
  }
}

class VegetableItem {
  final String name;
  final String imageURL;

  VegetableItem(this.name, this.imageURL);
}