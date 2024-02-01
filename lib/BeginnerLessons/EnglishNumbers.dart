import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class NumbersPage extends StatefulWidget {
  @override
  _NumbersPageState createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final FlutterTts flutterTts = FlutterTts();
  final numbers = [
    {'number': '1', 'pronunciation': 'One'},
    {'number': '2', 'pronunciation': 'Two'},
    {'number': '3', 'pronunciation': 'Three'},
    {'number': '4', 'pronunciation': 'Four'},
    {'number': '5', 'pronunciation': 'Five'},
    {'number': '6', 'pronunciation': 'Six'},
    {'number': '7', 'pronunciation': 'Seven'},
    {'number': '8', 'pronunciation': 'Eight'},
    {'number': '9', 'pronunciation': 'Nine'},
    {'number': '10', 'pronunciation': 'Ten'},
    {'number': '11', 'pronunciation': 'Eleven'},
    {'number': '12', 'pronunciation': 'Twelve'},
    {'number': '13', 'pronunciation': 'Thirteen'},
    {'number': '14', 'pronunciation': 'Fourteen'},
    {'number': '15', 'pronunciation': 'Fifteen'},
    {'number': '16', 'pronunciation': 'Sixteen'},
    {'number': '17', 'pronunciation': 'Seventeen'},
    {'number': '18', 'pronunciation': 'Eighteen'},
    {'number': '19', 'pronunciation': 'Nineteen'},
    {'number': '20', 'pronunciation': 'Twenty'},
    {'number': '21', 'pronunciation': 'Twenty-One'},
    {'number': '22', 'pronunciation': 'Twenty-Two'},
    {'number': '23', 'pronunciation': 'Twenty-Three'},
    {'number': '24', 'pronunciation': 'Twenty-Four'},
    {'number': '25', 'pronunciation': 'Twenty-Five'},
    {'number': '26', 'pronunciation': 'Twenty-Six'},
    {'number': '27', 'pronunciation': 'Twenty-Seven'},
    {'number': '28', 'pronunciation': 'Twenty-Eight'},
    {'number': '29', 'pronunciation': 'Twenty-Nine'},
    {'number': '30', 'pronunciation': 'Thirty'},
    {'number': '31', 'pronunciation': 'Thirty-One'},
    {'number': '32', 'pronunciation': 'Thirty-Two'},
    {'number': '33', 'pronunciation': 'Thirty-Three'},
    {'number': '34', 'pronunciation': 'Thirty-Four'},
    {'number': '35', 'pronunciation': 'Thirty-Five'},
    {'number': '36', 'pronunciation': 'Thirty-Six'},
    {'number': '37', 'pronunciation': 'Thirty-Seven'},
    {'number': '38', 'pronunciation': 'Thirty-Eight'},
    {'number': '39', 'pronunciation': 'Thirty-Nine'},
    {'number': '40', 'pronunciation': 'Forty'},
    {'number': '41', 'pronunciation': 'Forty-One'},
    {'number': '42', 'pronunciation': 'Forty-Two'},
    {'number': '43', 'pronunciation': 'Forty-Three'},
    {'number': '44', 'pronunciation': 'Forty-Four'},
    {'number': '45', 'pronunciation': 'Forty-Five'},
    {'number': '46', 'pronunciation': 'Forty-Six'},
    {'number': '47', 'pronunciation': 'Forty-Seven'},
    {'number': '48', 'pronunciation': 'Forty-Eight'},
    {'number': '49', 'pronunciation': 'Forty-Nine'},
    {'number': '50', 'pronunciation': 'Fifty'},
    {'number': '51', 'pronunciation': 'Fifty-One'},
    {'number': '52', 'pronunciation': 'Fifty-Two'},
    {'number': '53', 'pronunciation': 'Fifty-Three'},
    {'number': '54', 'pronunciation': 'Fifty-Four'},
    {'number': '55', 'pronunciation': 'Fifty-Five'},
    {'number': '56', 'pronunciation': 'Fifty-Six'},
    {'number': '57', 'pronunciation': 'Fifty-Seven'},
    {'number': '58', 'pronunciation': 'Fifty-Eight'},
    {'number': '59', 'pronunciation': 'Fifty-Nine'},
    {'number': '60', 'pronunciation': 'Sixty'},
    {'number': '61', 'pronunciation': 'Sixty-One'},
    {'number': '62', 'pronunciation': 'Sixty-Two'},
    {'number': '63', 'pronunciation': 'Sixty-Three'},
    {'number': '64', 'pronunciation': 'Sixty-Four'},
    {'number': '65', 'pronunciation': 'Sixty-Five'},
    {'number': '66', 'pronunciation': 'Sixty-Six'},
    {'number': '67', 'pronunciation': 'Sixty-Seven'},
    {'number': '68', 'pronunciation': 'Sixty-Eight'},
    {'number': '69', 'pronunciation': 'Sixty-Nine'},
    {'number': '70', 'pronunciation': 'Seventy'},
    {'number': '71', 'pronunciation': 'Seventy-One'},
    {'number': '72', 'pronunciation': 'Seventy-Two'},
    {'number': '73', 'pronunciation': 'Seventy-Three'},
    {'number': '74', 'pronunciation': 'Seventy-Four'},
    {'number': '75', 'pronunciation': 'Seventy-Five'},
    {'number': '76', 'pronunciation': 'Seventy-Six'},
    {'number': '77', 'pronunciation': 'Seventy-Seven'},
    {'number': '78', 'pronunciation': 'Seventy-Eight'},
    {'number': '79', 'pronunciation': 'Seventy-Nine'},
    {'number': '80', 'pronunciation': 'Eighty'},
    {'number': '81', 'pronunciation': 'Eighty-One'},
    {'number': '82', 'pronunciation': 'Eighty-Two'},
    {'number': '83', 'pronunciation': 'Eighty-Three'},
    {'number': '84', 'pronunciation': 'Eighty-Four'},
    {'number': '85', 'pronunciation': 'Eighty-Five'},
    {'number': '86', 'pronunciation': 'Eighty-Six'},
    {'number': '87', 'pronunciation': 'Eighty-Seven'},
    {'number': '88', 'pronunciation': 'Eighty-Eight'},
    {'number': '89', 'pronunciation': 'Eighty-Nine'},
    {'number': '90', 'pronunciation': 'Ninety'},
    {'number': '91', 'pronunciation': 'Ninety-One'},
    {'number': '92', 'pronunciation': 'Ninety-Two'},
    {'number': '93', 'pronunciation': 'Ninety-Three'},
    {'number': '94', 'pronunciation': 'Ninety-Four'},
    {'number': '95', 'pronunciation': 'Ninety-Five'},
    {'number': '96', 'pronunciation': 'Ninety-Six'},
    {'number': '97', 'pronunciation': 'Ninety-Seven'},
    {'number': '98', 'pronunciation': 'Ninety-Eight'},
    {'number': '99', 'pronunciation': 'Ninety-Nine'},
    {'number': '100', 'pronunciation': 'One Hundred'},
  ];

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  void speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Pronunciation'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: (numbers.length / 2).ceil(), // Calculate the number of rows needed
        itemBuilder: (context, rowIndex) {
          final startIndex = rowIndex * 2;
          final endIndex = startIndex + 2;
          final rowNumbers = numbers.sublist(startIndex, endIndex);
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: rowNumbers.map((numberInfo) {
              return Expanded(
                child: Card(
                  elevation: 3.0,
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          numberInfo['number']!,
                          style: TextStyle(fontSize: 36.0, fontFamily: "FjallaOne", fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        numberInfo['pronunciation']!,
                        style: TextStyle(fontSize: 20.0),
                      ),
                      IconButton(
                        onPressed: () {
                          speak(numberInfo['pronunciation']!);
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