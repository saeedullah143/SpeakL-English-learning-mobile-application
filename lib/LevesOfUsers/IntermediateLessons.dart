import 'package:flutter/material.dart';
import 'package:speakle_pyf/IntermediateLessons/Askingdirections.dart';
import 'package:speakle_pyf/IntermediateLessons/ContinentPage.dart';
import 'package:speakle_pyf/IntermediateLessons/Cuttingthepines.dart';
import 'package:speakle_pyf/IntermediateLessons/Dreams.dart';
import 'package:speakle_pyf/IntermediateLessons/FloodHazards.dart';
import 'package:speakle_pyf/IntermediateLessons/Hopeisthething.dart';
import 'package:speakle_pyf/IntermediateLessons/IbneSina.dart';
import 'package:speakle_pyf/IntermediateLessons/LastIntemediateLesson.dart';
import 'package:speakle_pyf/IntermediateLessons/MadinaCharter.dart';
import 'package:speakle_pyf/IntermediateLessons/Parents.dart';
import 'package:speakle_pyf/IntermediateLessons/PopulationGrowthhazards.dart';
import 'package:speakle_pyf/IntermediateLessons/ProphetJustice.dart';
import 'package:speakle_pyf/IntermediateLessons/SafetyFirst.dart';
import 'package:speakle_pyf/IntermediateLessons/Shoemaker.dart';
import 'package:speakle_pyf/IntermediateLessons/Sindbadstory.dart';
import 'package:speakle_pyf/IntermediateLessons/Soldiers.dart';
import 'package:speakle_pyf/IntermediateLessons/TheChampions.dart';
import 'package:speakle_pyf/IntermediateLessons/TheDawnsAwake.dart';
import 'package:speakle_pyf/IntermediateLessons/TwoBargains.dart';
import 'package:speakle_pyf/IntermediateLessons/WhataBlessings.dart';
import '../BeginnerLessons/Englishalphabets.dart';
import '../main.dart';


class Intermediatelessons extends StatefulWidget {
  const Intermediatelessons({super.key});

  @override
  State<Intermediatelessons> createState() => _IntermediatelessonsState();
}

class _IntermediatelessonsState extends State<Intermediatelessons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomLessonCard(
            lessonTitle: "Lesson 1",
            lessonSubtitle: "The Prophet\'s Justice",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_1", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProphetJusticePage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_1") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 2",
            lessonSubtitle: "Asking about Directions",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_2", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DirectionsPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_2") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 3",
            lessonSubtitle: "The Sindbad",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_3", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SindbadPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_3") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 4",
            lessonSubtitle: "Hazard\'s of Flood",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_4", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FloodHazardsPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_4") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 5",
            lessonSubtitle: "Poem",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_5", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DawnAwakePoemPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_5") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 6",
            lessonSubtitle: "Continents of world",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_6", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContinentPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_6") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 7",
            lessonSubtitle: "Ibn e Sina",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_7", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IbnSinaPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_7") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 8",
            lessonSubtitle: "Poem",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_8", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BlessingPoemPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_8") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 9",
            lessonSubtitle: "The Madina Charter",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_9", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MadinaCharterPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_9") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 10",
            lessonSubtitle: "The Dream",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_10", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DreamsPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_10") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 11",
            lessonSubtitle: "poem",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_11", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HopeIsTheThingPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_11") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 12",
            lessonSubtitle: "Parents",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_12", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ParentsPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_12") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 13",
            lessonSubtitle: "Population Growth Hazards",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_13", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PopulationGrowthPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_13") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 14",
            lessonSubtitle: "Safety First",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_14", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SafetyFirstPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_14") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 15",
            lessonSubtitle: "The Fantastic ShoeMaker",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_15", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FantasticShoemakerPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_15") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 16",
            lessonSubtitle: "poem",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_16", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FellingOfThePinesPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_16") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 17",
            lessonSubtitle: "The Real Heroes",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_17", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SoldiersPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_17") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 18",
            lessonSubtitle: "The Two Bargains",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_18", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TwoBargainsPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_18") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 19",
            lessonSubtitle: "The Champions",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_19", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChampionsPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_19") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 20",
            lessonSubtitle: "Last Lesson",
            onTap: () async {
              await sharedPref.setBool("IM_lesson_20", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LastIntermediatePage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("IM_lesson_20") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
      ],
    );
  }
}
class CustomLessonCard extends StatelessWidget {
  final String lessonTitle;
  final String lessonSubtitle;
  final VoidCallback onTap;
  final Icon icon;
  final bool isWatched;

  CustomLessonCard({
    required this.lessonTitle,
    required this.lessonSubtitle,
    required this.onTap,
    required this.icon,
    required this.isWatched
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 80,
          width: 500,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.grey)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    radius: 20.0,
                    child: icon
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      lessonTitle,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Text(
                    lessonSubtitle,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
              const Spacer(),
              Checkbox(
                value: isWatched,
                onChanged: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}