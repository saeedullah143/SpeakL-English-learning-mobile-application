
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:speakle_pyf/screens/registration_screen.dart';
import '../components/customButton.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {

  static const String id= 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller= AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation= ColorTween(begin: Colors.blueGrey,end: Colors.white).animate(controller);
    // animation= CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();

    controller.addListener(() {
      setState(() {
      });
    });
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'LOGO',
                  child: Container(
                    child: Image.asset('assets/images/logo.png'),
                    height: 60,
                  ),
                ),
                SizedBox(width: 10.0,),
                TypewriterAnimatedTextKit(text: ['SpeakLE'],
                textStyle: TextStyle(
                color: Colors.black,
                  fontSize: 35.0,
                  fontWeight: FontWeight.w900,
                ),),
            ]),
            SizedBox(
              height: 48.0,
            ),
            CustomButtons(btnName: 'Login',ontap: (){
              Navigator.pushNamed(context, LoginScreen.id);
            }, color: Colors.lightBlueAccent,),
            CustomButtons(btnName: 'Register', ontap: (){
              Navigator.pushNamed(context, RegistrationScreen.id);
            }, color: Colors.blueAccent,)
          ],
        ),
    ),
    );
  }
}

