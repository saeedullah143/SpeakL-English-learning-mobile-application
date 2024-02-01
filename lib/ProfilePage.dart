import 'package:flutter/material.dart';
import 'ProfilePages/AboutUs.dart';
import 'ProfilePages/TermsAndConditions.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
          Expanded(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Profileimage.png'),
                        radius: 60.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'User Name',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: IconButton(onPressed: (){

                          },
                              icon: Icon(Icons.logout), color: Colors.white,),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 20.0),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TermsAndConditions()));
                                },
                                child: Container(
                                  height: 60,
                                  width: 400,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Text(
                                    'Update Profile',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TermsAndConditions()));
                                },
                                child: Container(
                                  height: 60,
                                  width: 400,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Text(
                                    'Terms and Conditions',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AboutUs()));
                                },
                                child: Container(
                                  height: 60,
                                  width: 400,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Text(
                                    'About us',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
