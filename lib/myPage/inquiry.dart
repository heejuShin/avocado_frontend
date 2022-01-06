import 'package:flutter/material.dart';

class Inquiry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        toolbarHeight: 70,
        backgroundColor: Color.fromRGBO(129, 154, 33, 1.0),
        title: Text("1:1 문의",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'NanumSquareRound',
          ),
        ),
      ),
      body:
          Container(
            padding: EdgeInsets.fromLTRB(37.5, 66, 28.5, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Text('아이들의 보카도우미\nAVocaDo 고객센터입니다',
                    style: TextStyle(
                    color: Color(0xff010101),
                    fontSize: 21,
                    fontFamily: 'NotoSansCJKkr',
                    ),
                  ),
                ),
                SizedBox(height: 37.8),
                Container(
                  padding: EdgeInsets.fromLTRB(20.5, 23, 20.5, 23),
                  height: 178,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xffc6c6c6),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Row(
                          children:[
                            Image.asset('assets/images/icons/inquiry.png'),
                            SizedBox(width: 10),
                            Text('카카오톡 챗봇 운영',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff010101),
                                fontFamily: 'NotoSansCJKkr',
                                fontWeight: FontWeight.w500
                              )
                            ),
                          ]
                        ),
                        SizedBox(height: 21),
                        Text('궁금하신 사항을 문의로 남겨주시면\n하루 이내로 빠른 답변을 받을 수 있습니다.',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff010101),
                                fontFamily: 'NotoSansCJKkr',
                                fontWeight: FontWeight.w500
                            )
                        ),
                        SizedBox(height: 16),
                        Text('운영시간 평일 10:00~18:00 연락 가능',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(129, 154, 33, 1.0),
                                fontFamily: 'NotoSansCJKkr',
                                fontWeight: FontWeight.w400
                            )
                        ),
                      ],
                  )
                ),
                SizedBox(height: 24),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(
                    left: 3,
                    right: 3,
                  ),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  decoration: BoxDecoration(
                    color: Color(0xffffdc00),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text('카카오톡 1:1 상담하기',
                        style: TextStyle(
                        color: Color(0xff381e1f),
                        fontFamily: 'NotoSansCJKkr',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
    );
  }
}