import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class BodyPartsPage extends StatefulWidget {
  @override
  State<BodyPartsPage> createState() => _BodyPartsPageState();
}

class _BodyPartsPageState extends State<BodyPartsPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<BodyPart> bodyParts = [
    BodyPart(
        name: 'Head',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/head.png?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Hair',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/hair.png?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Eyes',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/eye.png?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Nose',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/nose.png?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Mouth',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/mouth.png?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Neck',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/neck.jpg?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Shoulder',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/shoulder.jpg?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Chest',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/chest.jpg?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Arm',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/arm.jpg?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Hand',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/hand.png?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Fingers',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/finger.png?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Leg',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/leg.png?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Knee',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/knee.jpg?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Foot',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/foot.png?resize=150%2C150&ssl=1'),
    BodyPart(
        name: 'Toes',
        imageUrl:
            'https://i0.wp.com/onlymyenglish.com/wp-content/uploads/toes.png?resize=150%2C150&ssl=1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Body Parts'),
          backgroundColor: Colors.teal,
        ),
        body:
            ListView.builder(
              itemCount: bodyParts.length,
              itemBuilder: (context, index) {
                final bodyPart = bodyParts[index];
                return _buildBodyPartCard(bodyPart);
          },
        )
        );
  }

  Widget _buildBodyPartCard(BodyPart bodyPart) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
            bodyPart.imageUrl,
            width: 120.0, // Adjust the width as needed
            height: 120.0, // Adjust the height as needed
          ),
          const SizedBox(height: 8.0),
          Text(
            bodyPart.name,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.volume_up),
            onPressed: () => _speakBodyPartName(bodyPart.name),
          ),
        ],
      ),
    );
  }

  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  void _speakBodyPartName(String bodyPartName) async {
    await flutterTts
        .setLanguage('en-US'); // Set the language (you can change this)
    await flutterTts.speak(bodyPartName);
  }
}

class BodyPart {
  final String name;
  final String imageUrl;

  BodyPart({
    required this.name,
    required this.imageUrl,
  });
}
