import 'package:flutter/material.dart';

class StudySelect extends StatelessWidget {

  List<String> routePage = [
    "repeat",
    "picture",
    "coloring",
    "sentence"
  ];
  InkWell StudyCard(BuildContext context, String name, int idx){
    return new InkWell(
      onTap: () async {
        await Navigator.pushNamed(
                context, "/"+routePage[idx]
              );
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(26, 20, 0, 20),
        child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(13),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  //radius: 25,
                  child: Container(
                    width: 49,
                    height: 49,
                    decoration: BoxDecoration(
                        //border: Border.all(color: Theme.of(context).accentColor,)
                    ),
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color(0xffd9d9d9),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 24),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(name,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'NotoSansCJKkr',
                      )
                  ),
                ],
              )
            ]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String idx = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          toolbarHeight: 70,
          backgroundColor: Color.fromRGBO(129, 154, 33, 1.0),
          title: Text(idx+"차시",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: 'NanumSquareRound',
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: ListView(
          children: [
            StudyCard(context, 'AI 따라하기', 0),
            Container(
              color: Color(0xfff0f0f0),
              height: 3,
            ),
            StudyCard(context, '그림 맞추기', 1),
            Container(
              color: Color(0xfff0f0f0),
              height: 3,
            ),
            StudyCard(context, '글자 색칠하기', 2),
            Container(
              color: Color(0xfff0f0f0),
              height: 3,
            ),
            StudyCard(context, '문장 학습', 3),
            Container(
              color: Color(0xfff0f0f0),
              height: 3,
            ),
          ],
        )
    );
  }
}