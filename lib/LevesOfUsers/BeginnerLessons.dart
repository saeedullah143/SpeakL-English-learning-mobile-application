import 'package:flutter/material.dart';
import 'package:speakle_pyf/BeginnerLessons/Genders.dart';
import '../BeginnerLessons/BodyParts.dart';
import '../BeginnerLessons/BorrowingBook.dart';
import '../BeginnerLessons/Colors.dart';
import '../BeginnerLessons/EnglishNumbers.dart';
import '../BeginnerLessons/Englishalphabets.dart';
import '../BeginnerLessons/Fatherandson.dart';
import '../BeginnerLessons/Fruits.dart';
import '../BeginnerLessons/GoodHabits.dart';
import '../BeginnerLessons/Jobs.dart';
import '../BeginnerLessons/KidAccident.dart';
import '../BeginnerLessons/LastBeginnerlesson.dart';
import '../BeginnerLessons/RanRanGoAway.dart';
import '../BeginnerLessons/Shapes.dart';
import '../BeginnerLessons/StudentTeacherdialog.dart';
import '../BeginnerLessons/TwoStudentsdialog.dart';
import '../BeginnerLessons/Vegetables.dart';
import '../BeginnerLessons/clothes.dart';
import '../BeginnerLessons/foods.dart';
import '../BeginnerLessons/friendtalkingonfootball.dart';
import '../BeginnerLessons/johnyjohnyyespapa.dart';
import '../main.dart';

class Beginnerlessons extends StatefulWidget {
  const Beginnerlessons({super.key});

  @override
  State<Beginnerlessons> createState() => _BeginnerlessonsState();
}

class _BeginnerlessonsState extends State<Beginnerlessons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomLessonCard(
          lessonTitle: "Lesson 1",
          lessonSubtitle: "English Alphabets",
          onTap: () async {
            await sharedPref.setBool("b_lesson_1", true);
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AlphabetsPage()))
                .then((value) {
              setState(() {});
            });
          },
          isWatched: sharedPref.getBool("b_lesson_1") ?? false,
          icon: const Icon(
            Icons.school_outlined,
            color: Colors.white,
          ),
        ),
        CustomLessonCard(
          lessonTitle: "Lesson 2",
          lessonSubtitle: "English Numbers",
          onTap: () async {
            await sharedPref.setBool("b_lesson_2", true);
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NumbersPage()))
                .then((value) {
              setState(() {});
            });
          },
          isWatched: sharedPref.getBool("b_lesson_2") ?? false,
          icon: const Icon(
            Icons.school_outlined,
            color: Colors.white,
          ),
        ),
        CustomLessonCard(
            lessonTitle: "Lesson 3",
            lessonSubtitle: "Vegetables",
            onTap: () async {
              await sharedPref.setBool("b_lesson_3", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VegetablePage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_3") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 4",
            lessonSubtitle: "Fruits",
            onTap: () async {
              await sharedPref.setBool("b_lesson_4", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FruitPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_4") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 5",
            lessonSubtitle: "Colors",
            onTap: () async {
              await sharedPref.setBool("b_lesson_5", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_5") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 6",
            lessonSubtitle: "Shapes",
            onTap: () async {
              await sharedPref.setBool("b_lesson_6", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShapesPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_6") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 7",
            lessonSubtitle: "Jobs",
            onTap: () async {
              await sharedPref.setBool("b_lesson_7", true);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => JobsPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_7") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 8",
            lessonSubtitle: "Clothes",
            onTap: () async {
              await sharedPref.setBool("b_lesson_8", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ClothesPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_8") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 9",
            lessonSubtitle: "Body Parts",
            onTap: () async {
              await sharedPref.setBool("b_lesson_9", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BodyPartsPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_9") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 10",
            lessonSubtitle: "Genders",
            onTap: () async {
              await sharedPref.setBool("b_lesson_10", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GendersPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_10") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 11",
            lessonSubtitle: "Food types",
            onTap: () async {
              await sharedPref.setBool("b_lesson_11", true);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FoodPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_11") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 12",
            lessonSubtitle: "Students Conversation",
            onTap: () async {
              await sharedPref.setBool("b_lesson_12", true);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TwostudentdialogPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_12") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 13",
            lessonSubtitle: "Poem",
            onTap: () async {
              await sharedPref.setBool("b_lesson_13", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JohnyJohnyPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_13") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 14",
            lessonSubtitle: "Good Habits",
            onTap: () async {
              await sharedPref.setBool("b_lesson_14", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GoodHabitsPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_14") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 15",
            lessonSubtitle: "First day at School",
            onTap: () async {
              await sharedPref.setBool("b_lesson_15", true);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StudentTeacherPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_15") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 16",
            lessonSubtitle: "To the Market",
            onTap: () async {
              await sharedPref.setBool("b_lesson_16", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GoingToMarketPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_16") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 17",
            lessonSubtitle: "Poem",
            onTap: () async {
              await sharedPref.setBool("b_lesson_17", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RainGoAwayPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_17") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 18",
            lessonSubtitle: "A Football Match",
            onTap: () async {
              await sharedPref.setBool("18", true);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FootballConversationPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_18") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 19",
            lessonSubtitle: "Borrowing a Book",
            onTap: () async {
              await sharedPref.setBool("b_lesson_19", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BorrowingBookPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_19") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 20",
            lessonSubtitle: "An Accident",
            onTap: () async {
              await sharedPref.setBool("b_lesson_20", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccidentStoryPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_20") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
        CustomLessonCard(
            lessonTitle: "Lesson 21",
            lessonSubtitle: "Last Lesson",
            onTap: () async {
              await sharedPref.setBool("b_lesson_21", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LastLessonPage())).then((value) {
                setState(() {});
              });
            },
            isWatched: sharedPref.getBool("b_lesson_21") ?? false,
            icon: Icon(
              Icons.school_outlined,
              color: Colors.white,
            )),
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
              border: Border.all(color: Colors.grey)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                    backgroundColor: Colors.indigo, radius: 20.0, child: icon),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      lessonTitle,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Text(
                    lessonSubtitle,
                    style: const TextStyle(
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
