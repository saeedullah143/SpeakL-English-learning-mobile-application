import 'package:flutter/material.dart';
import 'package:speakle_pyf/AdvanceLessons/Answeringtoquestions.dart';
import 'package:speakle_pyf/AdvanceLessons/AskingandAnswerBasicQ.dart';
import 'package:speakle_pyf/AdvanceLessons/BasicWordsForGreetings.dart';
import 'package:speakle_pyf/AdvanceLessons/ChoiceOfCarrier.dart';
import 'package:speakle_pyf/AdvanceLessons/FamilyImportance.dart';
import 'package:speakle_pyf/AdvanceLessons/FormalAndInformalAsking.dart';
import 'package:speakle_pyf/AdvanceLessons/FromMotherwithLove.dart';
import 'package:speakle_pyf/AdvanceLessons/GoodTimber.dart';
import 'package:speakle_pyf/AdvanceLessons/HisFirstFlight.dart';
import 'package:speakle_pyf/AdvanceLessons/IHaveADream.dart';
import 'package:speakle_pyf/AdvanceLessons/IntroducingyourSelf.dart';
import 'package:speakle_pyf/AdvanceLessons/LastLessonofAdvance.dart';
import 'package:speakle_pyf/AdvanceLessons/LongWalkToHome.dart';
import 'package:speakle_pyf/AdvanceLessons/LoveForTheCountry.dart';
import 'package:speakle_pyf/AdvanceLessons/MotherToSon.dart';
import 'package:speakle_pyf/AdvanceLessons/Orderingsomthing.dart';
import 'package:speakle_pyf/AdvanceLessons/ResponsibilitiesOfYouth.dart';
import 'package:speakle_pyf/AdvanceLessons/TheBladeofgrass.dart';
import 'package:speakle_pyf/AdvanceLessons/TheBlanket.dart';
import 'package:speakle_pyf/AdvanceLessons/TheWhiteLamb.dart';
import 'package:speakle_pyf/AdvanceLessons/WorldisTooMuch.dart';

import '../main.dart';


class Advancelessons extends StatefulWidget {
  const Advancelessons({super.key});

  @override
  State<Advancelessons> createState() => _AdvancelessonsState();
}

class _AdvancelessonsState extends State<Advancelessons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomLessonCard(
            lessonTitle: "Lesson 1",
            lessonSubtitle: "Words For Greetings",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_1", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WordsForGreetingsPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_1") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 2",
            lessonSubtitle: "How To Introduce",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_2", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelfIntroductionPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_2") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 3",
            lessonSubtitle: "How To Ask Questions",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_3", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AskingQuestionsPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_3") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 4",
            lessonSubtitle: "How To Order Something",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_4", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrderingPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_4") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 5",
            lessonSubtitle: "Questioning Politely",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_5", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FormalandinformalPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_5") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 6",
            lessonSubtitle: "Answering Politely",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_6", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AnsweringPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_6") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 7",
            lessonSubtitle: "His First Flight",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_7", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HisFirstFlightPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_7") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 8",
            lessonSubtitle: "A White Lamb",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_8", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WhiteLambPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_8") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 9",
            lessonSubtitle: "Poem",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_9", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GoodTimberPoemPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_9") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 10",
            lessonSubtitle: "Importance Of Family",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_10", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FamilyImportancePage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_10") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 11",
            lessonSubtitle: "Mother\'s Love",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_11", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MotherLovePage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_11") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 12",
            lessonSubtitle: "Responsibilities of Youth",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_12", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => YouthResponsibilitiesPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_12") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 13",
            lessonSubtitle: "Poem",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_13", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MotherToSonPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_13") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 14",
            lessonSubtitle: "The Blanket",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_14", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BlanketStoryPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_14") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 15",
            lessonSubtitle: "Worlds is With Us",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_15", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WorldIsTooMuchPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_15") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 16",
            lessonSubtitle: "Love For The country",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_16", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoveForCountryPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_16") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 17",
            lessonSubtitle: "Poem",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_17", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TheBladsofgrassPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_17") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 18",
            lessonSubtitle: "Long Walk To Home",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_18", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WalkToHomePage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_18") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 19",
            lessonSubtitle: "I Have Dream",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_19", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DreamSpeechPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_19") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 20",
            lessonSubtitle: "Choice Of Carrier",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_20", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChoiceOfCareerPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_20") ?? false,
            icon: Icon(Icons.school_outlined,color: Colors.white,)
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 21",
            lessonSubtitle: "Last Lesson",
            onTap: () async {
              await sharedPref.setBool("AD_lesson_21", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AdvanceLastLessonPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("AD_lesson_21") ?? false,
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
    required this.isWatched,
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

