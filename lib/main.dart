
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speakle_pyf/screens/login_screen.dart';
import 'package:speakle_pyf/screens/registration_screen.dart';
import 'package:speakle_pyf/screens/welcome_screen.dart';
import 'Homepage.dart';
import 'SpeakPractice/blocs/main_screen_bloc.dart';
import 'firebase_options.dart';
final navigatorKey = GlobalKey<NavigatorState>();

late final SharedPreferences sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  sharedPref = await SharedPreferences.getInstance();
  runApp(
    BlocProvider(
      create: (BuildContext context) => MainScreenBloc()
        ..add(
          const MainScreenEvent.initial(),
        ),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,

        navigatorKey: navigatorKey,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
        ),
        initialRoute: WelcomeScreen.id,
          routes: {
            WelcomeScreen.id: (context)=> WelcomeScreen(),
            LoginScreen.id: (context)=> LoginScreen(),
            RegistrationScreen.id: (context)=> RegistrationScreen(),
            HomePage.id: (context)=> HomePage(),
          },
        )
    ),
  );
}

