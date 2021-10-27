import 'package:flutter/material.dart';

import 'main.dart';
import 'aiTalk.dart';

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
        initialRoute: '/home', // /login
        routes: {
          '/home': (context) => HomePage(title: 'Avocado'),
          '/aiTalk': (context) => AiTalkPage(),
          /*'/login': (context) => SplashScreen(),
          '/home': (context) => myCalendar(),
          '/addTimeTable': (context) => addTimeTable(),
          '/editTimeTable': (context) => editTimeTable(),
          '/setting': (context) => settingPage(),
          '/dataAnalysis': (context) => dataAnalysisPage(),
          '/addBySpeech' : (context) => SpeechPage()*/
        }
    );
  }
}