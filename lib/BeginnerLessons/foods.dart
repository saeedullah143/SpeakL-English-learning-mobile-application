import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


class FoodPage extends StatefulWidget {
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<FoodItem> foodItems = [
    FoodItem(name: 'Hamburger', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/hamburger-150x150.png'),
    FoodItem(name: 'Cheeseburger', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/cheeseburger-150x150.png'),
    FoodItem(name: 'Sandwich', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/sandwich3-1-150x150.png'),
    FoodItem(name: 'Milk shake', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/milkshake1-2-150x150.png'),
    FoodItem(name: 'Muffin', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/muffins-150x150.png'),
    FoodItem(name: 'Burrito', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/breakfast-burrito-150x150.png'),
    FoodItem(name: 'Biscuit', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/biscuit-150x150.png'),
    FoodItem(name: 'Taco', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/taco-150x150.png'),
    FoodItem(name: 'Hot dog', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/hot-dog-1-150x150.png'),
    FoodItem(name: 'Fried chicken', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/fried-chicken-150x150.png'),
    FoodItem(name: 'Donuts', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/donnut-150x150.png'),
    FoodItem(name: 'Baguette', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Baguette-150x150.png'),
    FoodItem(name: 'Soft drink', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/soft-drink-150x150.png'),
    FoodItem(name: 'Pizza', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/pizza-1-150x150.png'),
    FoodItem(name: 'Onion ring', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/onion-rings-150x150.png'),
    FoodItem(name: 'Sausage', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/sausage2-150x150.png'),
    FoodItem(name: 'Pretzel', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Pretzel-150x150.png'),
    FoodItem(name: 'Pancake', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/pancake-150x150.png'),
    FoodItem(name: 'Bacon', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Untitled-design-25-150x150.png'),
    FoodItem(name: 'Chips', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/chip-150x150.png'),
    FoodItem(name: 'Noodle', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Copy-of-Fast-foods-150x150.png'),
    FoodItem(name: 'Cheese', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Untitled-design-13-150x150.png'),
    FoodItem(name: 'Egg', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Untitled-design-6-1-150x150.png'),
    FoodItem(name: 'Butter', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Butter-150x150.png'),
    FoodItem(name: 'Margarine', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Margarine-150x150.png'),
    FoodItem(name: 'Yogurt', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/yogurt-150x150.png'),
    FoodItem(name: 'Cottage cheese', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/cottage-cheese-150x150.png'),
    FoodItem(name: 'Ice cream', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Ice-cream-150x150.png'),
    FoodItem(name: 'Cream', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Cream-150x150.png'),
    FoodItem(name: 'Bread', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/bread-150x150.png'),
    FoodItem(name: 'Steak', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/steak-150x150.png'),
    FoodItem(name: 'Roast chicken', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/Roast-chicken-150x150.png'),
    FoodItem(name: 'Fish', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/fish-150x150.png'),
    FoodItem(name: 'Seafood', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/seafood-150x150.png'),
    FoodItem(name: 'Ham', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/ham-150x150.png'),
    FoodItem(name: 'Kebab', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/kebab-150x150.png'),
    FoodItem(name: 'Bacon', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/bacon-1-150x150.png'),
    FoodItem(name: 'Sour cream', imageUrl: 'https://7esl.com/wp-content/uploads/2017/12/sour-cream-150x150.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Food'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final foodItem = foodItems[index];
          return _buildFoodItem(foodItem);
        },
      ),
    );
  }

  Widget _buildFoodItem(FoodItem foodItem) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
         Image.network(
          foodItem.imageUrl,
          width: 120.0,
          height: 120.0,
        ),
        Text(
          foodItem.name,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: Icon(Icons.volume_up),
          onPressed: () => _speakFoodName(foodItem.name),
        ),
      ]
      ),
    );
  }
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
  void _speakFoodName(String foodName) async {
    await flutterTts.setLanguage('en-US'); // Set the language (you can change this)
    await flutterTts.speak(foodName);
  }
}

class FoodItem {
  final String name;
  final String imageUrl;

  FoodItem({
    required this.name,
    required this.imageUrl,
  });
}