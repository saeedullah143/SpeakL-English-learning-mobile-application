import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:http/http.dart' as http;

class FruitPage extends StatefulWidget {
  @override
  State<FruitPage> createState() => _FruitPageState();
}

class _FruitPageState extends State<FruitPage> {
  final List<FruitItem> fruits = [
    FruitItem(
        'Apple', 'https://www.hindimeaning.com/pictures/fruits/apple.jpg'),
    FruitItem(
        'Banana', 'https://www.hindimeaning.com/pictures/fruits/banana.jpg'),
    FruitItem(
        'Orange', 'https://www.hindimeaning.com/pictures/fruits/Orange.jpg'),
    FruitItem('Strawberry',
        'https://2.bp.blogspot.com/-yeKihkqZpug/XKoIY58QJGI/AAAAAAAAOl4/xm3xuc_ZHjEvBTTxGuYN5Tqj8RGIs5x8wCLcBGAs/s1600/Strawberry.jpg'),
    FruitItem(
        'Grape', 'https://www.hindimeaning.com/pictures/fruits/Grapes.jpg'),
    FruitItem(
        'Mango', 'https://www.hindimeaning.com/pictures/fruits/Mango.jpg'),
    FruitItem('Cherry',
        'https://2.bp.blogspot.com/-Yk4eJ5m7R_0/XKoJWDxfaVI/AAAAAAAAOmM/-dZO18wIzQsUsl7x-2k_d-AG7rpmY1g2wCLcBGAs/s1600/Cherry.jpg'),
    FruitItem('Watermelon',
        'https://www.hindimeaning.com/pictures/fruits/Water-melon.jpg'),
    FruitItem('Pineapple',
        'https://www.hindimeaning.com/pictures/fruits/Pineapple.jpg'),
    FruitItem('Lemon',
        'https://www.hindimeaning.com/pictures/fruits/Lemon,%20Lime.jpg'),
    FruitItem('Kiwi',
        'https://3.bp.blogspot.com/-kgqkr0R8G60/XKoJ05rmz0I/AAAAAAAAOmU/ngwzY3K9J5kJA2m8OeZgX2A5PN3EoTXcwCLcBGAs/s1600/Kiwi.jpg'),
    FruitItem(
        'Peach', 'https://www.hindimeaning.com/pictures/fruits/Peach.png'),
    FruitItem('Pear', 'https://www.hindimeaning.com/pictures/fruits/Pear.jpg'),
    FruitItem('Blueberry',
        'https://www.hindimeaning.com/pictures/fruits/Blueberry.jpg'),
    FruitItem('Pomegranate',
        'https://www.hindimeaning.com/pictures/fruits/Pomegranate.jpg'),
    FruitItem('Avocado',
        'https://2.bp.blogspot.com/-cJV4Y6w9ze4/XKoQ09rHt9I/AAAAAAAAOps/j0PeMhplatUKP97y0gLt3OcY-qSPq7f9gCLcBGAs/s1600/Avocado.jpg'),
    FruitItem('Mulberry',
        'https://www.hindimeaning.com/pictures/fruits/Mulberry.jpg'),
    FruitItem('Coconut',
        'https://www.hindimeaning.com/pictures/fruits/coconuts.jpeg'),
    FruitItem(
        'Apricot', 'https://www.hindimeaning.com/pictures/fruits/Apricot.jpg'),
    FruitItem('Cranberry',
        'https://4.bp.blogspot.com/-elQ-vXIuaKY/XKoRqJRtJhI/AAAAAAAAOqE/WDgFR0nboUofqEr2qFxqTGuG3BNkWeXxgCLcBGAs/s1600/Cranberry.jpg'),
    FruitItem(
        'Guava', 'https://www.hindimeaning.com/pictures/fruits/Guava.jpg'),
    FruitItem('Fig', 'https://www.hindimeaning.com/pictures/fruits/Fig.png'),
    FruitItem(
        'Papaya', 'https://www.hindimeaning.com/pictures/fruits/Papaya.jpg'),
    FruitItem('Passion Fruit',
        'https://2.bp.blogspot.com/-kXzFYA1FOLQ/XKoSmIc1iLI/AAAAAAAAOqc/z_iYMmw9Sv8ACh62vWsoG-bSTcJTJ0UMwCLcBGAs/s1600/Passion%2BFruit.jpg'),
    FruitItem('Dragon Fruit',
        'https://3.bp.blogspot.com/-2X3Y_tHWRM8/XKoUvsE6l3I/AAAAAAAAOrM/UvDIlESarDoP_bq9_b_59ZhBiH7ItIInQCLcBGAs/s1600/Pitaya.jpg'),
    FruitItem('Plum', 'https://www.hindimeaning.com/pictures/fruits/Plum.jpg'),
    FruitItem('Blackberry',
        'https://www.hindimeaning.com/pictures/fruits/Black%20Currant.jpg'),
    FruitItem('Cantaloupe',
        'https://2.bp.blogspot.com/-lGysjfiWy10/XKoKqrKKwTI/AAAAAAAAOmo/SzuNTlopq3A_sticquxl5c55kk-Vhi0awCLcBGAs/s1600/Cantaloupe.jpg'),
    FruitItem('Persimmon',
        'https://3.bp.blogspot.com/-J5l8ZzX5a_U/XKoT4kPlWEI/AAAAAAAAOqs/M64HPaFb12IexMMT1fBV_5rbI2iwbnhggCLcBGAs/s1600/Persimmon.jpg'),
  ];

  final FlutterTts flutterTts = FlutterTts();

  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> speakFruitName(String name) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruit Names'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruitItem = fruits[index];
          return _buildFruitItem(fruitItem);
        },
      ),
    );
  }

  Widget _buildFruitItem(FruitItem fruitItem) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
          fruitItem.imageURL,
          width: 120.0,
          height: 120.0,
        ),
          Text(fruitItem.name),
          IconButton(
          icon: Icon(Icons.volume_up),
          onPressed: () => speakFruitName(fruitItem.name),
        ),
      ]),
    );
  }
}
class FruitItem {
  final String name;
  final String imageURL;

  FruitItem(this.name, this.imageURL);
}