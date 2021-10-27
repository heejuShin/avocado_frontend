import 'package:flutter/material.dart';

class AiTalkPage extends StatefulWidget {
  @override
  _AiTalkPageState createState() => _AiTalkPageState();
}

class _AiTalkPageState extends State<AiTalkPage>{

  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    //print(_todolistsWhole);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        centerTitle: false,
        leadingWidth: 0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(14.0, 2.0, 2.0, 2.0),
          //padding: const EdgeInsets.all(0),
          child: Image.asset(
            "assets/images/logo/AVocaDo.png",
            fit: BoxFit.cover,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
            child: IconButton(
                icon: Image.asset('assets/images/icons/icon_alarm.png'),
                color: Color.fromRGBO(129, 154, 33, 1.0),
                iconSize: 28,
                onPressed: () {
                  //test
                  /*Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new HomePage(title: 'Avocado'),
                    ),
                  );*/
                  Navigator.pushNamed(context, '/aiTalk');
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
            child: IconButton(
                icon: Image.asset('assets/images/icons/icon_menu.png'),
                color: Color.fromRGBO(129, 154, 33, 1.0),
                iconSize: 28,
                onPressed: () {
                  //Navigator.pushNamed(context, '/dataAnalysis');
                }),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.73,
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
                        //child: Text("hello?"),
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
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.43,
                            height: MediaQuery
                                .of(context)
                                .size
                                .width * 0.39,
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
                                //child: Text("hello?"),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.43,
                            height: MediaQuery
                                .of(context)
                                .size
                                .width * 0.39,
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
                                //child: Text("hello?"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.43,
                            height: MediaQuery
                                .of(context)
                                .size
                                .width * 0.39,
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
                                //child: Text("hello?"),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.43,
                            height: MediaQuery
                                .of(context)
                                .size
                                .width * 0.39,
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
                                //child: Text("hello?"),
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
      ),
      bottomNavigationBar:
      SizedBox(
        //height: 90,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromRGBO(129, 154, 33, 1.0),
          //https://security-nanglam.tistory.com/484
          items: [
            new BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icons/icon_home.png',
              ),
              activeIcon: Image.asset(
                  'assets/images/icons/icon_home_active.png'),
              label: '홈',
            ),
            new BottomNavigationBarItem(
              icon: Image.asset('assets/images/icons/icon_aitalk.png'),
              activeIcon: Image.asset(
                  'assets/images/icons/icon_aitalk_active.png'),
              label: 'AI말하기',
            ),
            new BottomNavigationBarItem(
              icon: Image.asset('assets/images/icons/icon_learn.png'),
              activeIcon: Image.asset(
                  'assets/images/icons/icon_learn_active.png'),
              label: '학습하기',
            ),
            new BottomNavigationBarItem(
              icon: Image.asset('assets/images/icons/icon_mypage.png'),
              activeIcon: Image.asset(
                  'assets/images/icons/icon_mypage_active.png'),
              label: '마이페이지',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}