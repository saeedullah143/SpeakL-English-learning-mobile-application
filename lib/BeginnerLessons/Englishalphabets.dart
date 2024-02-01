import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class AlphabetsPage extends StatefulWidget {
  @override
  _AlphabetsPageState createState() => _AlphabetsPageState();
}

class _AlphabetsPageState extends State<AlphabetsPage> {
  final FlutterTts flutterTts = FlutterTts();
  final alphabet = [
    {'letter': 'A', 'pronunciation': 'a','phonics': 'ay','imageURL': 'https://assets.stickpng.com/thumbs/5a01b9e27ca233f48ba6279e.png'},
    {'letter': 'B', 'pronunciation': 'b','phonics': 'bee','imageURL': 'https://assets.stickpng.com/thumbs/5a01ba427ca233f48ba627a2.png'},
    {'letter': 'C', 'pronunciation': 'c','phonics': 'see','imageURL': 'https://assets.stickpng.com/thumbs/5a01ba5e7ca233f48ba627a5.png'},
    {'letter': 'D', 'pronunciation': 'd','phonics': 'dee','imageURL': 'https://assets.stickpng.com/thumbs/5a01ba7a7ca233f48ba627a8.png'},
    {'letter': 'E', 'pronunciation': 'e','phonics': 'e','imageURL': 'https://assets.stickpng.com/thumbs/5a01ba967ca233f48ba627ab.png'},
    {'letter': 'F', 'pronunciation': 'f','phonics': 'eff','imageURL': 'https://assets.stickpng.com/thumbs/5a01bab57ca233f48ba627ae.png'},
    {'letter': 'G', 'pronunciation': 'g','phonics': 'jee','imageURL': 'https://assets.stickpng.com/thumbs/5a01bad57ca233f48ba627b1.png'},
    {'letter': 'H', 'pronunciation': 'h','phonics': 'aych','imageURL': 'https://assets.stickpng.com/thumbs/5a01baeb7ca233f48ba627b3.png'},
    {'letter': 'I', 'pronunciation': 'i','phonics': 'eye','imageURL': 'https://assets.stickpng.com/thumbs/5a01bb0b7ca233f48ba627b5.png'},
    {'letter': 'J', 'pronunciation': 'j','phonics': 'jay','imageURL': 'https://assets.stickpng.com/thumbs/5a01bb287ca233f48ba627b7.png'},
    {'letter': 'K', 'pronunciation': 'k','phonics': 'kay','imageURL': 'https://assets.stickpng.com/thumbs/5a01bb577ca233f48ba627b9.png'},
    {'letter': 'L', 'pronunciation': 'l','phonics': 'ell','imageURL': 'https://assets.stickpng.com/thumbs/5a01bb6e7ca233f48ba627bb.png'},
    {'letter': 'M', 'pronunciation': 'm','phonics': 'em','imageURL': 'https://assets.stickpng.com/thumbs/5a01bb8b7ca233f48ba627bd.png'},
    {'letter': 'N', 'pronunciation': 'n','phonics': 'en','imageURL': 'https://assets.stickpng.com/thumbs/5a01bba17ca233f48ba627bf.png'},
    {'letter': 'O', 'pronunciation': 'o','phonics': 'oh','imageURL': 'https://assets.stickpng.com/thumbs/5a01bbba7ca233f48ba627c1.png'},
    {'letter': 'P', 'pronunciation': 'p','phonics': 'pee','imageURL': 'https://assets.stickpng.com/thumbs/5a01bbf17ca233f48ba627c4.png'},
    {'letter': 'Q', 'pronunciation': 'q','phonics':'kyoo','imageURL': 'https://assets.stickpng.com/thumbs/5a01bc087ca233f48ba627c6.png'},
    {'letter': 'R', 'pronunciation': 'r','phonics': 'arr','imageURL': 'https://assets.stickpng.com/thumbs/5a01bc227ca233f48ba627c8.png'},
    {'letter': 'S', 'pronunciation': 's','phonics': 'ess','imageURL': 'https://assets.stickpng.com/thumbs/5a01bc387ca233f48ba627ca.png'},
    {'letter': 'T', 'pronunciation': 't','phonics': 'tee','imageURL': 'https://assets.stickpng.com/thumbs/5a01bc4e7ca233f48ba627cc.png'},
    {'letter': 'U', 'pronunciation': 'u','phonics': 'yoo','imageURL': 'https://assets.stickpng.com/thumbs/5a01bc647ca233f48ba627ce.png'},
    {'letter': 'V', 'pronunciation': 'v','phonics':'vee','imageURL': 'https://assets.stickpng.com/thumbs/5a01bc8f7ca233f48ba627d1.png'},
    {'letter': 'W', 'pronunciation': 'w','phonics':'double-yoo','imageURL': 'https://assets.stickpng.com/thumbs/5a01bca77ca233f48ba627d3.png'},
    {'letter': 'X', 'pronunciation': 'x','phonics':'ex','imageURL': 'https://assets.stickpng.com/thumbs/5a01bcbd7ca233f48ba627d5.png'},
    {'letter': 'Y', 'pronunciation': 'y','phonics':'why','imageURL': 'https://assets.stickpng.com/thumbs/5a01bcd57ca233f48ba627d7.png'},
    {'letter': 'Z', 'pronunciation': 'z','phonics':'zee','imageURL': 'https://assets.stickpng.com/thumbs/5a01bce57ca233f48ba627d8.png'},
  ];

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  void speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setSpeechRate(0.3);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alphabet Pronunciation'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: alphabet.length ~/ 2, // Number of rows
        itemBuilder: (context, rowIndex) {
          final startIndex = rowIndex * 2;
          final endIndex = startIndex + 2;
          final rowAlphabets = alphabet.sublist(startIndex, endIndex);
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: rowAlphabets.map((letterInfo) {
              return Expanded(
                child: Card(
                  elevation: 3.0,
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        letterInfo['imageURL'] ?? '',
                        width: 100.0,
                        height: 100.0,
                      ),
                      Text(
                        letterInfo['phonics']!,
                        style: TextStyle(fontSize: 20.0),
                      ),
                      IconButton(
                        onPressed: () {
                          speak(letterInfo['pronunciation']!);
                        },
                        icon: Icon(
                          Icons.volume_up_rounded,
                          color: Colors.indigo,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
