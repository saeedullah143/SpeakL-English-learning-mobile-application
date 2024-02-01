import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'QuestionPage.dart';

class TextToSpeechScreen extends StatefulWidget {
  final String textToSpeak;
  final List<Question> questions;
  final String lessontitle;

  TextToSpeechScreen({
    required this.textToSpeak,
    required this.questions,
    required this.lessontitle
  });

  @override
  _TextToSpeechScreenState createState() => _TextToSpeechScreenState();
}

class _TextToSpeechScreenState extends State<TextToSpeechScreen> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;
  bool isRestarting = false;
  Duration speakingDuration = Duration.zero;
  Timer? timer;
  DateTime? startTime;
  //for showing quiz Page
  bool showingQuiz = false;
  String? selectedAnswer;


  @override
  void dispose() {
    timer?.cancel();
    flutterTts.stop();
    super.dispose();
  }

  void _speakText(String text) async {
    if (!isSpeaking) {
      flutterTts.setCompletionHandler(() {
        setState(() {
          isSpeaking = false;
          speakingDuration = Duration.zero;
          timer?.cancel();
        });
      });

      await flutterTts.speak(text);

      setState(() {
        isSpeaking = true;
        speakingDuration = Duration.zero;
        startTime = DateTime.now();
        timer = Timer.periodic(Duration(seconds: 1), (timer) {
          if (isSpeaking) {
            setState(() {
              var elapsedTime = DateTime.now().difference(startTime!);
              speakingDuration = elapsedTime;
            });
          } else {
            timer.cancel();
          }
        });
      });
    } else {
      if (isRestarting) {
        await flutterTts.stop();
        timer?.cancel();
        setState(() {
          isSpeaking = false;
        });
      } else {
        await flutterTts.stop();
        timer?.cancel();
        setState(() {
          isSpeaking = false;
          isRestarting = true; // Set the flag to true on the first click
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lessontitle),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom: 10.0),
              child: Text('Play and Listen the voice carefully', style: TextStyle(fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0, top: 10.0),
              child: Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0)
                ),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _speakText(widget.textToSpeak);
                          showingQuiz = true;
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          shape: CircleBorder(),
                          primary: isSpeaking ? Colors.red : Colors.green,
                        ),
                        child: Icon(
                          isSpeaking? Icons.replay : Icons.play_arrow,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          '${(speakingDuration.inMinutes).toString().padLeft(2,'0')}:${(speakingDuration.inSeconds % 60).toString().padLeft(2, '0')}',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          isSpeaking ? 'Playing' : 'Stopped',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 5.0,right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: SingleChildScrollView(
                      child: showingQuiz
                          ? Column(
                        children: widget.questions.map((question) {
                          return QuestionWidget(
                            question: question,
                            onAnswerSelected: (selectedOption) {
                              setState(() {
                                selectedAnswer = selectedOption;
                              });
                            },
                            selectedAnswer: selectedAnswer,
                          );
                        }).toList(),
                      )
                          : null,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
