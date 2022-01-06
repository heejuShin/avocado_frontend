import 'package:flutter/material.dart';

class StudyPage extends StatefulWidget {
  @override
  _StudyPageState createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  Padding card(String content, bool isComplete){
    return new Padding(
        padding: const EdgeInsets.all(1.5),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.215,
          height: MediaQuery.of(context).size.width * 0.215,//MediaQuery.of(context).size.height * 0.,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.pushNamed(
                context, '/studySelect',
                arguments: content,
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              //color: Colors.blue,
              color: Color.fromRGBO(231, 241, 195, 1),
              child: Center(child: Text(content,
                  style: TextStyle(
                  color: isComplete ? Color.fromRGBO(129, 154, 33, 1.0) : Colors.white,
                  fontSize: 32,
                  fontFamily: 'NanumSquareRound',
                  fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              //child: Text("hello?"),
            ),
          ),
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child : SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  card('1', true),
                  card('2', true),
                  card('3', true),
                  card('4', true),
                ]
              ),
              Row(
                  children: <Widget>[
                    card('5', true),
                    card('6', true),
                    card('7', true),
                    card('8', true),
                  ]
              ),
              Row(
                  children: <Widget>[
                    card('9', false),
                    card('10', false),
                    card('11', false),
                    card('12', false),
                  ]
              ),
              Row(
                  children: <Widget>[
                    card('13', false),
                    card('14', false),
                    card('15', false),
                    card('16', false),
                  ]
              ),
              Row(
                  children: <Widget>[
                    card('17', false),
                    card('18', false),
                    card('19', false),
                    card('20', false),
                  ]
              ),
              Row(
                  children: <Widget>[
                    card('21', false),
                    card('22', false),
                    card('23', false),
                    card('24', false),
                  ]
              ),
              Row(
                  children: <Widget>[
                    card('25', false),
                    card('26', false),
                    card('27', false),
                    card('28', false),
                  ]
              ),
              Row(
                  children: <Widget>[
                    card('29', false),
                    card('30', false),
                    card('31', false),
                    card('32', false),
                  ]
              ),
            ],
          ),
        )
    );

    throw UnimplementedError();
  }

}