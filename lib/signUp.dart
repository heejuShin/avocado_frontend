import 'package:flutter/material.dart';
/**
 * todo
 * 이메일 validate
 * 비밀번호 validate
 * 비밀번호 확인 validate
 * 닉네임 validate
 * textform css
 */
class SignUp1Page extends StatefulWidget {
  @override
  _SignUp1PageState createState() => _SignUp1PageState();
}

class _SignUp1PageState extends State<SignUp1Page>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
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
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "이메일을 입력해주세요 :)";
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
                          labelText: '이메일',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(100,100,100,1.0),//Color.fromRGBO(129, 154, 33, 1.0),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "이메일을 입력해주세요 :)";
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
                            color: Color.fromRGBO(100,100,100,1.0),//Color.fromRGBO(129, 154, 33, 1.0),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "비밀번호..";
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
                          labelText: '비밀번호 확인',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(100,100,100,1.0),//Color.fromRGBO(129, 154, 33, 1.0),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "닉네임을 입력해주세요.";
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
                          labelText: '닉네임(최소2자)',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(100,100,100,1.0),//Color.fromRGBO(129, 154, 33, 1.0),
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0 - 50,
                    height: 45,
                    child: ElevatedButton(
                      // label: Text("GOOGLE"),
                      child: Text('다음',
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
                        Navigator.pushReplacementNamed(
                          context, '/signUp2',
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      )
    );
  }
}

class SignUp2Page extends StatefulWidget {
  @override
  _SignUp2PageState createState() => _SignUp2PageState();
}

class _SignUp2PageState extends State<SignUp2Page>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
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
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return "휴대폰 번호를 입력해주세요 :)";
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
                              labelText: '+82 휴대폰 번호 입력',
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(100,100,100,1.0),//Color.fromRGBO(129, 154, 33, 1.0),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: TextFormField(
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return "인증번호가 옳지 않습니다 :(";
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
                              labelText: '인증번호 입력',
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(100,100,100,1.0),//Color.fromRGBO(129, 154, 33, 1.0),
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3 + 120,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0 - 50,
                        height: 45,
                        child: ElevatedButton(
                          // label: Text("GOOGLE"),
                          child: Text('다음',
                              style: TextStyle(
                                fontSize: 18,
                              )
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(129, 154, 33, 1.0),
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
              ],
            )
        )
    );
  }
}