import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Laxicon/Antonyms.dart';
import 'Laxicon/Idioms.dart';
import 'Laxicon/Phrases.dart';
import 'Laxicon/Synonyms.dart';
import 'Laxicon/Vocabulary.dart';
import 'Translator/TranslatorMainPage.dart';
import 'Translator/provider/translator_provider.dart';

class LexiconPage extends StatelessWidget {
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
                        Icons.book,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Laxicon',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0)),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
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
                        SizedBox(height: 10,),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Row(children: <Widget>[
                            Customcontainer(
                              lessonTitle: "Phrases",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PhrasesPage(),
                                  ),
                                );
                              },
                              backgroundImage: AssetImage("assets/images/Phrases.jpeg"),
                            ),
                            Customcontainer(
                              lessonTitle: "Idioms",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Idiompage(),
                                  ),
                                );
                              },
                              backgroundImage: AssetImage("assets/images/Idioms.jpeg"),
                            ),
                          ]),
                        ),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Row(children: <Widget>[
                            Customcontainer(
                              lessonTitle: "Vocabulary",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VocabularyPage(),
                                  ),
                                );
                              },
                              backgroundImage: AssetImage("assets/images/vocabulary.jpeg"),
                            ),
                            Customcontainer(
                              lessonTitle: "Synonyms",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SynonymsPage(),
                                  ),
                                );
                              },
                              backgroundImage: AssetImage("assets/images/Synonyms.jpeg"),
                            ),
                          ]),
                        ),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Row(children: <Widget>[
                            Customcontainer(
                              lessonTitle: "Antonyms",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AntonymPage(),
                                  ),
                                );
                              },
                              backgroundImage: AssetImage("assets/images/antonyms.jpeg"),
                            ),
                            Customcontainer(
                              lessonTitle: "Translator",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>  ChangeNotifierProvider(
                                      create: (BuildContext context) => TranslatorData(),
                                      child: MaterialApp(
                                        title: 'Google Translate',
                                        debugShowCheckedModeBanner: false,
                                        theme: ThemeData(
                                          primarySwatch: Colors.teal,
                                          primaryColor: Color(0xff5848D9),
                                          scaffoldBackgroundColor: Color(0xfff9f9f9),
                                        ),
                                        home: Translator(),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              backgroundImage: AssetImage("assets/images/Translator.jpeg"),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Customcontainer extends StatelessWidget {
  final String lessonTitle;
  final VoidCallback onTap;
  final AssetImage backgroundImage;

  Customcontainer({required this.lessonTitle, required this.onTap,required this.backgroundImage,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 50.0),
        child: Container(
          width: 180,
          height: 150,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: backgroundImage,
              opacity: 0.5,
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
