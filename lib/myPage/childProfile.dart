import 'package:flutter/material.dart';

class ChildProfile extends StatelessWidget {
  InkWell childProfileCard(String image, String name, String sex, String birth){
    return new InkWell(
      onTap: () async {
        /*await Navigator.pushNamed(
                context, '/loginAgain',
              );*/
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(26, 20, 0, 20),
        child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(300.0),
                //radius: 25,
                child: Container(
                  width: 75,
                  height: 75,
                  child: Image.asset(
                    'assets/images/icons/'+image+'.png',
                    fit: BoxFit.cover,
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
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoSansCJKkr',
                      )
                  ),
                  Text(sex,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoSansCJKkr',
                      )
                  ),
                  Text(birth,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoSansCJKkr',
                      )),
                ],
              )
            ]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        toolbarHeight: 70,
        backgroundColor: Color.fromRGBO(129, 154, 33, 1.0),
        title: Text("아이프로필",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'NanumSquareRound',
          ),
        ),
      ),
      body: ListView(
        children: [
          childProfileCard('icon_profile', '정아보', '남아', '2018/08/19'),
          Container(
            color: Color(0xfff0f0f0),
            height: 3,
          ),
          childProfileCard('icon_profile', '정카도', '남아', '2020/12/239'),
          Container(
            color: Color(0xfff0f0f0),
            height: 3,
          ),
          InkWell(
            onTap: () async {
              await Navigator.pushNamed(
                    context, '/addChild',
                  );
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(46, 25, 0, 25),
              child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300.0),
                        border: Border.all(
                          width: 3,
                          color: Color.fromRGBO(186, 204, 122, 1.0),
                        ),
                      ),
                      //radius: 25,
                      child: Container(
                        width: 34,
                        height: 34,
                        child: Container(
                          //color: Colors.white,
                          height: 200,
                          child: Icon(
                            Icons.add,
                            color: Color.fromRGBO(186, 204, 122, 1.0),
                          )
                        ),
                      ),
                    ),
                    SizedBox(width: 44),
                    Text('아이 추가하기',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                    )
                    ),
                      ],
                    ),
              ),
            ),
        ],
      )
    );
  }
}