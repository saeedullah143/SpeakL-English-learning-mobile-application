import 'package:flutter/material.dart';

class Idiompage extends StatelessWidget {
  final Map<String, String> idioms = {
    'A penny for your thoughts': 'Asking someone what they are thinking.',
    'Bite the bullet': 'Facing a difficult or unpleasant situation with courage.',
    'Break a leg': 'A way to wish someone good luck.',
    'Cry over spilled milk': 'Worrying about something that has already happened and cannot be changed.',
    'Don\'t cry over spilled milk': 'Don\'t worry about things that cannot be undone.',
    'Easy as pie': 'Something that is very easy to do.',
    'Fit as a fiddle': 'In good physical condition.',
    'Hit the nail on the head': 'To describe or do something exactly right.',
    'Jump on the bandwagon': 'To join a popular trend or activity.',
    'Kill two birds with one stone': 'Accomplishing two tasks with a single effort.',
    'Let the cat out of the bag': 'Revealing a secret.',
    'Piece of cake': 'Something that is very easy to do.',
    'Read between the lines': 'To understand a deeper or hidden meaning.',
    'See the light at the end of the tunnel': 'Feeling optimistic about a difficult situation coming to an end.',
    'Spill the beans': 'To reveal a secret.',
    'Take it with a grain of salt': 'Not taking something too seriously or literally.',
    'The ball is in your court': 'It\'s your turn to make a decision or take action.',
    'Throw in the towel': 'Giving up on something.',
    'Under the weather': 'Feeling unwell or sick.',
    'Walking on thin ice': 'Engaging in a risky or dangerous activity.',
    'You can\'t judge a book by its cover': 'You should not judge someone or something based on appearances alone.',
    'Break the ice': 'To start a conversation or relieve tension in a social setting.',
    'Call it a day': 'To decide to stop working on something.',
    'Don\'t put all your eggs in one basket': 'Not relying entirely on one option or plan.',
    'Every cloud has a silver lining': 'There is something positive in every negative situation.',
    'Fish out of water': 'Feeling uncomfortable or out of place in a particular situation.',
    'Get a taste of your own medicine': 'Experience the same negative treatment that you have given to others.',
    'Hit the hay': 'Go to bed or go to sleep.',
    'In hot water': 'In trouble or facing a difficult situation.',
    'Jumping to conclusions': 'Making hasty or premature judgments.',
    'Keep an eye on': 'To watch or monitor closely.',
    'Let sleeping dogs lie': 'Avoid stirring up old conflicts or issues.',
    'Make a long story short': 'Summarize a lengthy story or explanation.',
    'No pain, no gain': 'You have to work hard or endure difficulties to achieve success.',
    'Out of the frying pan into the fire': 'Going from one difficult situation to an even worse one.',
    'Put all your eggs in one basket': 'Relying entirely on one option or plan.',
    'Read the room': 'Be aware of the social dynamics and mood in a situation.',
    'Shoot the breeze': 'Have a casual conversation or chat.',
    'To each his own': 'Different people have different preferences and opinions.',
    'Turn a blind eye': 'Ignore or pretend not to notice something.',
    'Under the table': 'A secret or illegal transaction.',
    'When pigs fly': 'Something that is highly unlikely to happen.',
    'You can\'t have your cake and eat it too': 'You cannot have everything you want at the same time.',
    'Zip your lip': 'Be quiet or stop talking.',
    'All ears': 'Listening attentively to someone.',
    'Burning the candle at both ends': 'Working excessively or overextending yourself.',
    'Don\'t count your chickens before they hatch': 'Don\'t assume success until it is certain.',
    'Early bird catches the worm': 'Being proactive or getting ahead of others leads to success.'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Idioms in English'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: idioms.length,
        itemBuilder: (context, index) {
          final idiomKey = idioms.keys.elementAt(index);
          final idiomValue = idioms[idiomKey];
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$idiomKey',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 8.0, right: 5.0),
                    child: Text('$idiomValue', style: TextStyle(fontSize: 16.0)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}