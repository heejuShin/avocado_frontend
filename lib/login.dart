import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  final splashDelay = 4;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(129, 154, 33, 1.0),
          border: Border.all(
            color: Color(0xff707070),
            width: 1,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(14.0, 2.0, 2.0, 2.0),
            //padding: const EdgeInsets.all(0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.baseline,
                children:<Widget>[
                  Image.asset(
                    "assets/images/logo/avocado_splash.png",
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/logo/subName.png",
                    fit: BoxFit.cover,
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  FocusNode focusNode = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
    //return MaterialApp(
      //title: 'Welcome to avocado',
      body: Container(
      //home: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.18),
            Image.asset(
              "assets/images/logo/avocado.png",
              width: MediaQuery.of(context).size.width * 0.4,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Image.asset(
              "assets/images/logo/subName_login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Form(
              key : _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      focusNode: focusNode,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "이메일을 입력해주세요 :)";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          //hintText: '이메일',
                        //filled: true,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                          ),
                          //color: Color.fromRGBO(129, 154, 33, 1.0),
                          labelText: '이메일',
                          labelStyle: TextStyle(
                              color: focusNode.hasFocus ? Color.fromRGBO(129, 154, 33, 1.0) : Color.fromRGBO(100, 100, 100, 1.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      focusNode: focusNode2,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "비밀번호를 입력해주세요 :)";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        //filled: true,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(129, 154, 33, 1.0), width: 3.0),
                        ),
                        //color: Color.fromRGBO(129, 154, 33, 1.0),
                        labelText: '비밀번호',
                        labelStyle: TextStyle(
                            color: focusNode.hasFocus ? Color.fromRGBO(129, 154, 33, 1.0) : Color.fromRGBO(100, 100, 100, 1.0)
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0 - 50,
                    height: 50,
                    child: ElevatedButton(
                     // label: Text("GOOGLE"),
                      child: Text('로그인',
                        style: TextStyle(
                          fontSize: 18,
                        )
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(129, 154, 33, 1.0),
                      ),
                      onPressed: () async{
                        //final value = await (userCredential = await signInWithGoogle());
                        final test = Navigator.pop(context);
                        /*await Navigator.pushNamed(
                          context, '/home',
                        );*/
                      },
                    ),
                  ),
                  TextButton(
                    child: Text('아보카도가 처음이신가요?',
                        style: TextStyle(
                        color: Color.fromRGBO(129, 154, 33, 1.0),
                    ),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(
                        context, '/signUp1',
                      );
                    },
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 25),
                      Container(
                        width:  MediaQuery.of(context).size.width/2 - 90,
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                      ),
                      SizedBox(width: 15),
                      Text('SNS 계정 로그인',
                        style: TextStyle(
                          color : Color(0xffd9d9d9),
                        )
                      ),
                      SizedBox(width: 15),
                      Container(
                        width:  MediaQuery.of(context).size.width/2 -90,
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 40,
                    child: ButtonTheme(
                      shape: RoundedRectangleBorder( //버튼을 둥글게 처리
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        // label: Text("GOOGLE"),
                        child: Text('구글 계정으로 로그인',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff6c7176),
                            )
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.5, color: Color(0xffd9d9d9),)
                        ),
                        onPressed: () async{
                          //final value = await (userCredential = await signInWithGoogle());
                          final test = Navigator.pop(context);
                          Navigator.pushNamed(
                            context, '/home',
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}