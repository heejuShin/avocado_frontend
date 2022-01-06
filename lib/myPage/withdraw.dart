import 'package:flutter/material.dart';

class WithDraw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        toolbarHeight: 70,
        backgroundColor: Color.fromRGBO(129, 154, 33, 1.0),
        title: Text("회원탈퇴",
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
              child: Container(
                padding: EdgeInsets.fromLTRB(28.5, 40, 28.5, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("비밀번호",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoSansCJKkr',
                          color: Color.fromRGBO(99, 99, 99, 1.0) ,//: Color.fromRGBO(100, 100, 100, 1.0)
                        )
                    ),
                    TextFormField(
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
                          labelText: '',
                          labelStyle: TextStyle(
                            fontSize: 0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(99, 99, 99, 1.0) ,//: Color.fromRGBO(100, 100, 100, 1.0)
                          )
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1.0 - 310,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1.0 - 50,
                      height: 46,
                      child: ElevatedButton(
                        child: Text('탈퇴하기',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'NotoSansCJKKR',
                            )
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(217, 217, 217, 1.0),
                          elevation: 0,
                        ),
                        onPressed: () async{
                          //final value = await (userCredential = await signInWithGoogle());
                          Navigator.pop(context);
                          Navigator.pushNamed(
                            context, '/loginAgain',
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
          )
      ),
    );
  }
}