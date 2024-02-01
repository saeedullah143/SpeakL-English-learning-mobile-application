import 'package:flutter/material.dart';

class AntonymPage extends StatelessWidget {
  final List<Map<String, String>> antonymsList = [
    {"antonym": "Above", "synonym": "Below"},
    {"antonym": "Absent", "synonym": "Present"},
    {"antonym": "Accept", "synonym": "Reject"},
    {"antonym": "Admit", "synonym": "Deny"},
    {"antonym": "Afraid", "synonym": "Confident"},
    {"antonym": "Always", "synonym": "Never"},
    {"antonym": "Ancient", "synonym": "Modern"},
    {"antonym": "Arrival", "synonym": "Departure"},
    {"antonym": "Attack", "synonym": "Defend"},
    {"antonym": "Begin", "synonym": "End"},
    {"antonym": "Believe", "synonym": "Doubt"},
    {"antonym": "Big", "synonym": "Small"},
    {"antonym": "Buy", "synonym": "Sell"},
    {"antonym": "Clear", "synonym": "Cloudy"},
    {"antonym": "Closed", "synonym": "Open"},
    {"antonym": "Day", "synonym": "Night"},
    {"antonym": "Demand", "synonym": "Supply"},
    {"antonym": "Easy", "synonym": "Difficult"},
    {"antonym": "Empty", "synonym": "Full"},
    {"antonym": "Fast", "synonym": "Slow"},
    {"antonym": "Forget", "synonym": "Remember"},
    {"antonym": "Friend", "synonym": "Enemy"},
    {"antonym": "Happy", "synonym": "Sad"},
    {"antonym": "Hard", "synonym": "Soft"},
    {"antonym": "Hate", "synonym": "Love"},
    {"antonym": "High", "synonym": "Low"},
    {"antonym": "Hot", "synonym": "Cold"},
    {"antonym": "Inside", "synonym": "Outside"},
    {"antonym": "Join", "synonym": "Separate"},
    {"antonym": "Laugh", "synonym": "Cry"},
    {"antonym": "Light", "synonym": "Dark"},
    {"antonym": "Lose", "synonym": "Win"},
    {"antonym": "Loud", "synonym": "Quiet"},
    {"antonym": "Male", "synonym": "Female"},
    {"antonym": "Old", "synonym": "Young"},
    {"antonym": "Rich", "synonym": "Poor"},
    {"antonym": "Right", "synonym": "Wrong"},
    {"antonym": "Short", "synonym": "Tall"},
    {"antonym": "Simple", "synonym": "Complicated"},
    {"antonym": "Single", "synonym": "Married"},
    {"antonym": "Strong", "synonym": "Weak"},
    {"antonym": "Success", "synonym": "Failure"},
    {"antonym": "Thin", "synonym": "Thick"},
    {"antonym": "Top", "synonym": "Bottom"},
    {"antonym": "True", "synonym": "False"},
    {"antonym": "Up", "synonym": "Down"},
    {"antonym": "Victory", "synonym": "Defeat"},
    {"antonym": "Wealth", "synonym": "Poverty"},
    {"antonym": "Wise", "synonym": "Foolish"},
    {"antonym": "Zenith", "synonym": "Nadir"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Antonyms and Synonyms'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: antonymsList.length,
        itemBuilder: (BuildContext context, int index) {
          final antonym = antonymsList[index]["antonym"]!;
          final synonym = antonymsList[index]["synonym"]!;
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '$antonym',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text('=>',style: TextStyle(fontSize: 25.0),),
                  Text('$synonym',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}