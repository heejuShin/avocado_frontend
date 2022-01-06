import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child : Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0.73,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      //color: Colors.blue,
                      color: Color.fromRGBO(231, 241, 195, 1),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(22,31,0,0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("무료체험 기간이",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 21,
                                        fontFamily: 'NotoSansCJKkr',
                                      ),
                                    ),
                                    SizedBox(height:3),
                                    Row(
                                      children: [
                                        Text("14일",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 21,
                                            fontFamily: 'NotoSansCJKkr',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(" 남았어요",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 21,
                                            fontFamily: 'NotoSansCJKkr',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Text(''),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(32,0,0,0),
                                child: Text('제한 없는 아보카도 ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'NotoSansCJKkr',
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                padding: EdgeInsets.fromLTRB(2,0,0,0),
                                child: FlatButton(
                                  child: Image.asset('assets/images/avo/button.png'),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(height:21),
                            ],
                          ),
                          Container(
                            alignment: Alignment(1,0),
                            child: Image.asset(
                              'assets/images/avo/avo4.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                )
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 10.0, 0.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: MediaQuery.of(context).size.width * 0.39,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              print('Card tapped.');
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Color.fromRGBO(255, 247, 204, 1),
                              //margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                              child: Stack(
                                children: [
                                  Transform.rotate(
                                    angle: 30 * math.pi / 180,
                                    child: Container(
                                      alignment: Alignment(1,1),
                                      child: Opacity(
                                        opacity: 0.4,
                                        child: Image.asset(
                                          'assets/images/avo/avo4.png',
                                          fit: BoxFit.cover,
                                          colorBlendMode: BlendMode.darken,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(14, 19, 0, 0),
                                    child: Text('우리동네\n언어치료사',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontFamily: 'NotoSansCJKkr',
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ),
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.14 - 40), //오른쪽 정렬을 위해
                        Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: MediaQuery.of(context).size.width * 0.39,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              print('Card tapped.');
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Color.fromRGBO(221, 241, 255, 1),
                                child: Stack(
                                  children: [
                                    Transform.rotate(
                                      angle: 30 * math.pi / 180,
                                      child: Container(
                                        alignment: Alignment(1,1),
                                        child: Opacity(
                                          opacity: 0.4,
                                          child: Image.asset(
                                            'assets/images/avo/avo4.png',
                                            fit: BoxFit.cover,
                                            colorBlendMode: BlendMode.darken,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(14, 19, 0, 0),
                                      child: Text('아이를 위한\n자장가',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontFamily: 'NotoSansCJKkr',
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: MediaQuery.of(context).size.width * 0.39,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              print('Card tapped.');
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Color.fromRGBO(253, 228, 211, 1),
                              //margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                                child: Stack(
                                  children: [
                                    Transform.rotate(
                                      angle: 30 * math.pi / 180,
                                      child: Container(
                                        alignment: Alignment(1,1),
                                        child: Opacity(
                                          opacity: 0.4,
                                          child: Image.asset(
                                            'assets/images/avo/avo4.png',
                                            fit: BoxFit.cover,
                                            colorBlendMode: BlendMode.darken,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(14, 19, 0, 0),
                                      child: Text('키즈\n인기상품',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontFamily: 'NotoSansCJKkr',
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.14 - 40),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: MediaQuery.of(context).size.width * 0.39,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              print('Card tapped.');
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Color.fromRGBO(255, 226, 255, 1),
                                child: Stack(
                                  children: [
                                    Transform.rotate(
                                      angle: 30 * math.pi / 180,
                                      child: Container(
                                        alignment: Alignment(1,1),
                                        child: Opacity(
                                          opacity: 0.4,
                                          child: Image.asset(
                                            'assets/images/avo/avo4.png',
                                            fit: BoxFit.cover,
                                            colorBlendMode: BlendMode.darken,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(14, 19, 0, 0),
                                      child: Text('언어치료\nTip',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontFamily: 'NotoSansCJKkr',
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    /*SizedBox(width: 50,height: 10,
                child: const DecoratedBox(
                  decoration: const BoxDecoration(
                      color: Colors.red
                  ),
                ),)*/
                  ],
                )
            )
          ],
        )
    );

    throw UnimplementedError();
  }

}