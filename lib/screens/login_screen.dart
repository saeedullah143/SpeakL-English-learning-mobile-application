import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import '../Homepage.dart';
import '../components/customButton.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id= 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth=FirebaseAuth.instance;
  late String email;
  late String password;
  bool showSpinner=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'LOGO',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email=value;
                },
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  password=value;
                },
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 24.0,
              ),
              CustomButtons(
                  btnName: 'Login',
                  ontap: () async {
                    setState(() {
                      showSpinner=true;
                    });
                    try {
                      final existingUser=await _auth.signInWithEmailAndPassword(email: email, password: password);
                      if (existingUser != null && existingUser.user != null) {
                        Navigator.pushNamed(context, HomePage.id);
                        Fluttertoast.showToast(msg: "Login Successful");

                      } else {
                        print('Login failed');
                      }
                      setState(() {
                        showSpinner=false;
                      });
                      // if (existingUser != null) {
                      //   Navigator.pushNamed(context, ChatScreen.id);
                      // }
                    }
                    catch(e){
                      print(e);
                    }
                    },
                  color: Colors.lightBlueAccent)
            ],
          ),
        ),
      ),
    );
  }
}
