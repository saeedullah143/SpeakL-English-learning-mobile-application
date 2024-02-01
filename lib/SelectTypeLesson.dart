import 'package:flutter/material.dart';
import 'SpeakPractice/SpeakPractice.dart';
import 'TypeofLessons/ListeningLessons.dart';
import 'TypeofLessons/ReadingLessons.dart';
import 'WrittingPractice/app.dart';

class LessonsTypesPage extends StatefulWidget {
  const LessonsTypesPage({super.key});

  @override
  State<LessonsTypesPage> createState() => _LessonsTypesPageState();
}

class _LessonsTypesPageState extends State<LessonsTypesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.indigo,
                Colors.tealAccent,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 8.0),
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Home',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0)),
                  ],
                ),
              ),
              SizedBox(height: 100.0,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: ListView(
                    physics: ClampingScrollPhysics(),
                    children: <Widget>[
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Row(
                            children: <Widget>[
                              TypeofLessonCard(
                                lessonTitle: "Reading",
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ReadingLessons(),
                                    ),
                                  );
                                },
                                backgroundImage: AssetImage("assets/images/reading.jpg"),
                              ), // Adjust the spacing between the containers
                              TypeofLessonCard(
                                lessonTitle: "Listening",
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ListeningLessons(),
                                    ),
                                  );
                                },
                                backgroundImage: AssetImage("assets/images/listening.jpeg"),
                              ),
                            ]),),
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Row(
                            children: <Widget>[
                              TypeofLessonCard(
                                lessonTitle: "Writing",
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WritingPractice(),
                                    ),
                                  );
                                },
                                backgroundImage: AssetImage("assets/images/writing.jpg"),
                              ), // Adjust the spacing between the containers
                              TypeofLessonCard(
                                lessonTitle: "Speaking",
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainScreenView(),
                                    ),
                                  );
                                },
                                backgroundImage: AssetImage("assets/images/speaking.jpg"),
                              ),]),)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TypeofLessonCard extends StatelessWidget {
  final String lessonTitle;
  final VoidCallback onTap;
  final AssetImage backgroundImage;

  TypeofLessonCard(
      {required this.lessonTitle, required this.onTap,required this.backgroundImage,});



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 50.0),
        child: Container(
          width: 160,
          height: 180,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: backgroundImage,
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Text(
            lessonTitle,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'
            ),
          ),
        ),
      ),
    );
  }
}
