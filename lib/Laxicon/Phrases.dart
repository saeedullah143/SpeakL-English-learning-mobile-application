import 'package:flutter/material.dart';

class PhrasesPage extends StatefulWidget {
  @override
  _PhrasesPageState createState() => _PhrasesPageState();
}

class _PhrasesPageState extends State<PhrasesPage> {
  String selectedDefinition = '';

  void handlePhraseClick(String definition) {
    setState(() {
      selectedDefinition = definition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English Phrases'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          final phrase = phrases[index];
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              title: Text(
                '${phrase.phrase}',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 5.0,top: 8.0,right: 5.0),
                child: Text(
                  '${phrase.definition}',
                  style: TextStyle(fontSize: 16.0,color: Colors.black),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


class Phrase {
  final String phrase;
  final String definition;

  Phrase(this.phrase, this.definition);
}

final List<Phrase> phrases = [
  Phrase('A piece of cake', 'Something very easy'),
  Phrase('Bite the bullet', 'To face a difficult situation with courage'),
  Phrase('Break a leg', 'Good luck'),
  Phrase('Call it a day', 'To stop working on something'),
  Phrase('Costs an arm and a leg', 'Very expensive'),
  Phrase('Don’t cry over spilled milk', 'Don’t worry about things that have already happened'),
  Phrase('Every cloud has a silver lining', 'There is something positive in every situation'),
  Phrase('Fit as a fiddle', 'In good physical health'),
  Phrase('Get cold feet', 'Become too frightened to do something you had planned to do'),
  Phrase('Hit the nail on the head', 'Do or say something exactly right'),
  Phrase('In the same boat', 'In the same difficult situation as other people'),
  Phrase('Jump the gun', 'To do something too early'),
  Phrase('Keep an eye on the ball', 'Pay close attention'),
  Phrase('Let the cat out of the bag', 'Reveal a secret'),
  Phrase('Make a long story short', 'Summarize a long story'),
  Phrase('No pain, no gain', 'You have to work hard for what you want'),
  Phrase('Once in a blue moon', 'Very rarely'),
  Phrase('Piece of cake', 'Something very easy'),
  Phrase('Read between the lines', 'Understand a deeper or hidden meaning'),
  Phrase('Spill the beans', 'Reveal a secret'),
  Phrase('Take a rain check', 'Decline an offer, but suggest it can be taken up later'),
  Phrase('Up in the air', 'Uncertain or undecided'),
  Phrase('When pigs fly', 'Something that will never happen'),
  Phrase('The ball is in your court', 'It is your responsibility to make a decision or take action'),
  Phrase('Burning the midnight oil', 'Working late into the night'),
  Phrase('Caught between a rock and a hard place', 'In a difficult or impossible situation'),
  Phrase('Don’t put all your eggs in one basket', 'Don’t risk everything on a single venture'),
  Phrase('Get a taste of your own medicine', 'Experience something negative that you have done to others'),
  Phrase('Hit the sack', 'Go to bed'),
  Phrase('It’s a piece of cake', 'It’s very easy'),
  Phrase('Kick the bucket', 'To die'),
  Phrase('Let the cat out of the bag', 'Reveal a secret'),
  Phrase('Miss the boat', 'Miss an opportunity'),
  Phrase('On the ball', 'Doing a great job'),
  Phrase('Pull someone’s leg', 'Tease or joke with someone'),
  Phrase('See eye to eye', 'Agree with someone'),
  Phrase('Speak of the devil', 'The person we were just talking about has entered the room'),
  Phrase('Take it with a grain of salt', 'Don’t take what someone says too seriously'),
  Phrase('Under the weather', 'Feeling ill'),
  Phrase('Actions speak louder than words', 'What you do is more important than what you say'),
  Phrase('Beat around the bush', 'Avoid getting to the point'),
  Phrase('Bite off more than you can chew', 'Take on a task that is too big'),
  Phrase('Break a leg', 'Good luck'),
  Phrase('Cry over spilled milk', 'Complain about a loss from the past'),
  Phrase('Don’t judge a book by its cover', 'Don’t judge someone or something by appearance alone'),
  Phrase('Every dog has its day', 'Everyone gets their moment to shine'),
  Phrase('Feeling under the weather', 'Feeling ill'),
  Phrase('Give someone the benefit of the doubt', 'Trust what someone says'),
  Phrase('Hit the nail on the head', 'Do or say something exactly right'),
  Phrase('In the heat of the moment', 'Overwhelmed by what is happening in the moment'),
];
