import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Animation/FadeAnimation.dart';


class mygradientContainer extends StatelessWidget {
  final Widget myContainer;
  final String pagename;
  const mygradientContainer({required this.pagename,required this.myContainer});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              FadeAnimation(
                  1,
                  Center(
                    child: Text(
                      "SpeakLE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Open Saans",
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
          SizedBox(height: 20),
          FadeAnimation(
            1.3,
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  pagename,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          myContainer
        ],
      ),
    );
  }
}
