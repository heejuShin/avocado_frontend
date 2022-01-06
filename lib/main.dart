import 'dart:async';

import 'package:flutter/material.dart';
import 'app.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'homeScreen.dart';
import 'aiTalk.dart';
import 'study.dart';
import 'myPage.dart';
/**
 * todo
 *
 */

void main() {
  runApp(Avocado());
}

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
    _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  //todo
  //Navigator.pushNamed
  ListTile drawerItem(String image, String name){
    return new ListTile(leading: Image.asset(
      'assets/images/icons/'+image+'.png',
      ),
      title: Text(name,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'NotoSansCJKkr',
      )),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    //print(_todolistsWhole);
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _tabWidgets = [
    HomeScreen(),
    AiTalkPage(),
    StudyPage(),
    MyPage(),
  ];
  final List<String> appbarImg = [
    "avocado",
    "aiTalk",
    "study",
    "myPage"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        centerTitle: false,
        leadingWidth: 0,
        leading: Container(),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(14.0, 2.0, 2.0, 2.0),
          //padding: const EdgeInsets.all(0),
        child: Image.asset(
          "assets/images/logo/"+appbarImg[_selectedIndex]+".png",
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
            child: Builder(
              builder: (context) {
                return IconButton(
                    icon: Image.asset('assets/images/icons/icon_menu.png'),
                    color: Color.fromRGBO(129, 154, 33, 1.0),
                    iconSize: 28,
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                      //Navigator.pushNamed(context, '/dataAnalysis');
                    });
                  }
                ),
                ),
                ],
                ),
                body: _tabWidgets[_selectedIndex],
                endDrawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                  Container(
                    height: 110.0,
                    child: DrawerHeader(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          alignment: Alignment(1.0, 0.0),
                          child: InkWell(
                            onTap:(){Navigator.pop(context);},
                            child: Image.asset(
                              'assets/images/icons/icon_menu_white.png',
                            ),
                          ),
                      ),
                      decoration: BoxDecoration(
                      color: Color.fromRGBO(129, 154, 33, 1.0),
                          ),
                        ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(300.0),
                            //radius: 25,
                            child: Container(
                              width: 80,
                              height: 80,
                              child: Image.asset(
                                'assets/images/icons/icon_profile.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text('닉네임',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'NotoSansCJKkr',
                                fontWeight: FontWeight.w700,
                              )),
                        ]
                      ),
                    ),
                  ),
                    Container(
                      color: Color(0xfff0f0f0),
                      height: 10,
                    ),
                    drawerItem('setting', '설정'),
                    Container(
                      color: Color(0xfff0f0f0),
                      height: 10,
                    ),
                    drawerItem('notice', '공지사항'),
                    drawerItem('ask', '자주 묻는 질문'),
                    drawerItem('inquiry', '1:1 문의하기'),
                    Container(
                      color: Color(0xfff0f0f0),
                      height: 10,
                    ),
                    drawerItem('term1', '서비스 이용약관'),
                    drawerItem('term2', '개인정보처리방침'),
                    drawerItem('term3', '위치기반서비스 이용약관'),
                    Container(
                      color: Color(0xfff0f0f0),
                      height: 500,
                      ),
                    //),

                  ],
                ),
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
              activeIcon: Image.asset('assets/images/icons/icon_home_active.png'),
              label: '홈',
            ),
            new BottomNavigationBarItem(
              icon: Image.asset('assets/images/icons/icon_aitalk.png'),
              activeIcon: Image.asset('assets/images/icons/icon_aitalk_active.png'),
              label: 'AI말하기',
            ),
            new BottomNavigationBarItem(
              icon: Image.asset('assets/images/icons/icon_learn.png'),
              activeIcon: Image.asset('assets/images/icons/icon_learn_active.png'),
              label: '학습하기',
            ),
            new BottomNavigationBarItem(
              icon: Image.asset('assets/images/icons/icon_mypage.png'),
              activeIcon: Image.asset('assets/images/icons/icon_mypage_active.png'),
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


/*Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),*/ // body
/*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/

