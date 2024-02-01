import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ColorPage extends StatefulWidget {
  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  final List<ColorItem> colors = [
    ColorItem(Colors.red, 'Red'),
    ColorItem(Colors.green, 'Green'),
    ColorItem(Colors.blue, 'Blue'),
    ColorItem(Colors.yellow, 'Yellow'),
    ColorItem(Colors.orange, 'Orange'),
    ColorItem(Colors.purple, 'Purple'),
    ColorItem(Colors.pink, 'Pink'),
    ColorItem(Colors.brown, 'Brown'),
    ColorItem(Colors.teal, 'Teal'),
    ColorItem(Colors.indigo, 'Indigo'),
    ColorItem(Colors.cyan, 'Cyan'),
    ColorItem(Colors.lime, 'Lime'),
    ColorItem(Colors.amber, 'Amber'),
    ColorItem(Colors.black, 'Black'),
    ColorItem(Colors.white, 'White'),
    ColorItem(Colors.grey, 'Grey'),
    ColorItem(Colors.lightBlue, 'Light Blue'),
    ColorItem(Colors.deepOrange, 'Deep Orange'),
    ColorItem(Colors.lightGreen, 'Light Green'),
    ColorItem(Colors.deepPurple, 'Deep Purple'),
  ];

  final FlutterTts flutterTts = FlutterTts();

  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> speakColorName(String name) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Color Names'),
          backgroundColor: Colors.teal,
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            final colorItem = colors[index];
            return ListTile(
              title: Text(colorItem.name),
              leading: Container(
                width: 50,
                height: 50,
                color: colorItem.color,
              ),
              trailing: IconButton(
                icon: Icon(Icons.volume_up),
                onPressed: () => speakColorName(colorItem.name),
              ),
            );
          },
        ),

    );
  }
}
class ColorItem {
  final Color color;
  final String name;

  ColorItem(this.color, this.name);
}