import 'package:flutter/material.dart';

import 'main.dart';
import 'aiTalk.dart';
import 'login.dart';
import 'signUp.dart';
import 'studySelect.dart';
import 'myPage/all.dart';
import 'studyDetail/all.dart';

class Avocado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Avocado',
        theme: ThemeData(
          primaryColor: Colors.white,
          //primaryColor: global.primary,
          //accentColor:  global.accent,
        ),
        home: HomePage(title: 'Avocado'),
        initialRoute: '/login', // /login
        routes: {
          '/home': (context) => HomePage(title: 'Avocado'),
          '/aiTalk': (context) => AiTalkPage(),
          '/login': (context) => SplashScreen(),
          '/loginAgain': (context) => LoginPage(),
          '/signUp1': (context) => SignUp1Page(),
          '/signUp2': (context) => SignUp2Page(),
          '/childProfile': (context) => ChildProfile(),
          '/addChild': (context) => addChild(),
          '/inquiry': (context) => Inquiry(),
          '/withdraw': (context) => WithDraw(),
          '/studySelect': (context) => StudySelect(),
          '/repeat': (context) => Repeat(),
          '/picture': (context) => Picture(),
          '/coloring': (context) => Coloring(),
          '/sentence': (context) => Sentence(),
        }
    );
  }
}