import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class StudentTeacherPage extends StatefulWidget {
  @override
  State<StudentTeacherPage> createState() => _StudentTeacherPageState();
}

class _StudentTeacherPageState extends State<StudentTeacherPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<DialogLine> dialogue = [
    DialogLine("Student", "Hi, Teacher!"),
    DialogLine("Teacher", "Hello, student!"),
    DialogLine("Student", "I am happy for school today."),
    DialogLine("Teacher", "Me too! It will be a good year."),
    DialogLine("Student", "Thanks, teacher."),
    DialogLine("Teacher", "You're welcome."),
  ];
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> speakLine(String line) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(line);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Teacher Greetings'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: dialogue.length,
        itemBuilder: (context, index) {
          final line = dialogue[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 35.0),
              child: Text(line.text,style: TextStyle(
                  fontSize: 25.0
              ),),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: IconButton(
                icon: Icon(Icons.volume_up),
                onPressed: () => speakLine(line.text),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DialogLine {
  final String speaker;
  final String text;

  DialogLine(this.speaker, this.text);
}




