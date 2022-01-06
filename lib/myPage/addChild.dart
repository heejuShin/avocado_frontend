import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class addChild extends StatefulWidget {

  @override
  _addChildState createState() => _addChildState();
}

class _addChildState extends State<addChild> {
  late DateTime birthDay;
  final initDate = DateFormat('yyyy-MM-dd').parse('2000-01-01');
  void changeName(){
    setState((){

    });
  }
  void changeSex(){
    setState((){

    });
  }
  void onDateTimeChanged(DateTime date) {
    setState(() {
      birthDay = date;
    });
  }
  void changeLevel(){
    setState((){

    });
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
        title: Text("아이 정보 입력",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'NanumSquareRound',
          ),
        ),
      ),
      body: Center(
          child: Form(
            child: ListView(
              padding: EdgeInsets.fromLTRB(28.5, 66, 28.5, 30),
              children:[
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("아이 이름",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(99, 99, 99, 1.0) ,//: Color.fromRGBO(100, 100, 100, 1.0)
                      )
                  ),
                  TextFormField(
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "아이의 이름을 입력해주세요 :)";
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      //filled: true,
                        hintText: 'ex) 정아보',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                        ),
                        labelText: '',//'아이 이름',
                        labelStyle: TextStyle(
                            fontSize: 0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(99, 99, 99, 1.0) ,//: Color.fromRGBO(100, 100, 100, 1.0)
                        )
                    ),
                  ),
                  SizedBox(height: 30),
                  Text("성별",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(99, 99, 99, 1.0) ,//: Color.fromRGBO(100, 100, 100, 1.0)
                      )
                  ),
                  SizedBox(height:12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        child: Center(
                          child: Text('남자',
                            style: TextStyle(
                              color: Color(0xffa8a8a8),
                              fontSize: 18,
                              fontFamily: 'NotoSansCJKkr',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color.fromRGBO(129, 154, 33, 1),
                            width: 2,
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        child: Center(
                          child: Text('여자',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'NotoSansCJKkr',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        height: 60,
                        decoration: BoxDecoration(
                          color:  Color.fromRGBO(129, 154, 33, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text("생년월일",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(99, 99, 99, 1.0) ,//: Color.fromRGBO(100, 100, 100, 1.0)
                      )
                  ),
                  Row(
                    children:[
                      SizedBox(width: (MediaQuery.of(context).size.width - 298) / 2),
                      new SizedBox(
                        width: 75,
                        child: new TextField(
                          decoration: const InputDecoration(
                            hintText: " 2020",
                            hintStyle: TextStyle(
                              color: Color(0xffa8a8a8),
                              fontSize: 25,
                              fontFamily: 'NotoSansCJKkr',
                              fontWeight: FontWeight.w700,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 17),
                      Text('/',
                        style: TextStyle(
                          color: Color(0xffa8a8a8),
                          fontSize: 25,
                          fontFamily: 'NotoSansCJKkr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 16),
                      new SizedBox(
                        width: 40,
                        child: new TextField(
                          decoration: const InputDecoration(
                            hintText: "08",
                            hintStyle: TextStyle(
                              color: Color(0xffa8a8a8),
                              fontSize: 25,
                              fontFamily: 'NotoSansCJKkr',
                              fontWeight: FontWeight.w700,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 17),
                      Text('/',
                        style: TextStyle(
                          color: Color(0xffa8a8a8),
                          fontSize: 25,
                          fontFamily: 'NotoSansCJKkr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 16),
                      new SizedBox(
                        width: 40,
                        child: new TextField(
                          decoration: const InputDecoration(
                              hintText: "17",
                              hintStyle: TextStyle(
                                color: Color(0xffa8a8a8),
                                fontSize: 25,
                                fontFamily: 'NotoSansCJKkr',
                                fontWeight: FontWeight.w700,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                              ),
                          ),
                        ),

                      ),
                      SizedBox(width: (MediaQuery.of(context).size.width - 298) / 2),
                      /*TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty){
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: '2020',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                            ),
                            labelText: '',//'아이 이름',
                            labelStyle: TextStyle(
                              fontSize: 0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(99, 99, 99, 1.0) ,//: Color.fromRGBO(100, 100, 100, 1.0)
                            )
                        ),
                      ),*/
                    ],
                  ),
                /*
                SizedBox(
                  height: 150,
                  child: CupertinoDatePicker(
                      minimumYear: 1900,
                      maximumYear: DateTime.now().year,
                      initialDateTime: initDate,
                      maximumDate: DateTime.now(),
                      onDateTimeChanged: onDateTimeChanged,
                      mode: CupertinoDatePickerMode.date,
                    ),
                  ),*/
                  SizedBox(height: 32),
                  Text("언어능력",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(99, 99, 99, 1.0) ,//: Color.fromRGBO(100, 100, 100, 1.0)
                      )
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 95,
                        child: Center(
                          child: Text('초급',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'NotoSansCJKkr',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        height: 60,
                        decoration: BoxDecoration(
                          color:  Color.fromRGBO(129, 154, 33, 1),
                        ),
                      ),
                      Container(
                        width: 95,
                        child: Center(
                          child: Text('중급',
                            style: TextStyle(
                              color: Color(0xffa8a8a8),
                              fontSize: 18,
                              fontFamily: 'NotoSansCJKkr',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color.fromRGBO(129, 154, 33, 1),
                            width: 2,
                          ),
                        ),
                      ),
                      Container(
                        width: 95,
                        child: Center(
                          child: Text('고급',
                            style: TextStyle(
                              color: Color(0xffa8a8a8),
                              fontSize: 18,
                              fontFamily: 'NotoSansCJKkr',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color.fromRGBO(129, 154, 33, 1),
                            width: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Container(
                    width: MediaQuery.of(context).size.width-64,
                    child: Text('초급 난이도에서는 음절 단위를 학습합니다!\n예시) 입, 옷, 달',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff848484),
                        fontSize: 15,
                        fontFamily: 'NotoSansCJKkr',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              ],
            )
          )
      ),
    );
  }
}