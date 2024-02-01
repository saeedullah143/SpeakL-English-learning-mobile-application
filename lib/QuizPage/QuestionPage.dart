import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  final Question question;
  final Function(String) onAnswerSelected;
  final String? selectedAnswer;

  QuestionWidget({
    required this.question,
    required this.onAnswerSelected,
    this.selectedAnswer,
  });

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  String? selectedAnswer;
  bool answered = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.question.questionText,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Column(
              children: widget.question.options.map((option) {
                return ListTile(
                  title: Text(option),
                  leading: Radio<String>(
                    value: option,
                    groupValue: selectedAnswer,
                    onChanged: (value) {
                      setState(() {
                        selectedAnswer = value;
                        answered = true;
                      });
                      _showResultDialog(value == widget.question.correctAnswer);
                    },
                  ),
                );
              }).toList(),
            ),
            // SizedBox(height: 10),
            // if (answered)
            //   Text(
            //     selectedAnswer == widget.question.correctAnswer
            //         ? 'Correct'
            //         : 'False',
            //     style: TextStyle(
            //       color: selectedAnswer == widget.question.correctAnswer
            //           ? Colors.green
            //           : Colors.red,
            //       fontSize: 16,
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
  Future<void> _showResultDialog(bool isCorrect) async {
    String resultText = isCorrect ? 'Correct' : 'Wrong';
    Color resultColor = isCorrect ? Colors.green : Colors.red;

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text(resultText)),
          backgroundColor: resultColor,
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}


class Question {
  final String questionText;
  final List<String> options;
  final String correctAnswer;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswer,
  });
}