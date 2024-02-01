import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:flutter/material.dart';
import 'package:speakle_pyf/screens/login_screen.dart';
import '../components/customButton.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../constants.dart';

class RegistrationScreen extends StatefulWidget {

  static const String id= 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth=FirebaseAuth.instance;
  late String email;
  late String fullname;
  late String password;
  bool showSpinnner = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinnner,
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
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    fullname=value;
                  },
                  decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Full Name')
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
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Email')
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
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password')
              ),
              SizedBox(
                height: 24.0,
              ),
              CustomButtons(
                btnName: 'Register', ontap: () async {
                setState(() {
                  showSpinnner=true;
                });
                try{
                  final newuser= await _auth.createUserWithEmailAndPassword(email: email, password: password);
                    if(newuser !=null){
                      Navigator.pushNamed(context, LoginScreen.id);
                      Fluttertoast.showToast(msg: "Registrations Sucessfull");
                    }
                    setState(() {
                      showSpinnner=false;
                    });
                  }
                  catch(e){
                    print(e);
                  }
                  },
                color: Colors.blueAccent,)
            ],
          ),
        ),
      ),
    );
  }
}
