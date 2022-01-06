import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
        children: [
          InkWell(
            onTap: () async {
              await Navigator.pushNamed(
                context, '/loginAgain',
              );
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 10, 0, 10),
              child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(300.0),
                      //radius: 25,
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Image.asset(
                          'assets/images/icons/icon_profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text('닉네임',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                  ]
              ),
            ),
          ),
          Container(
            color: Color(0xfff0f0f0),
            height: 5,
          ),
            InkWell(
            onTap: () {
              //Navigator.pop(context);
            },
            child: Container(
                padding: EdgeInsets.fromLTRB(30, 25, 0, 25),
                child: Text(
                  "21800412@handong.edu",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'NotoSansCJKKR',
                  ),
                )
            ),
          ),
          Container(
            color: Color(0xfff0f0f0),
            height: 4,
          ),
          InkWell(
            onTap: () {
            },
            child: Container(
                padding: EdgeInsets.fromLTRB(30, 25, 0, 25),
                child: Text(
                  "010-1234-5678",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'NotoSansCJKKR',
                  ),
                )
            ),
          ),
          Container(
            color: Color(0xfff0f0f0),
            height: 4,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/childProfile');
            },
            child: Container(
                padding: EdgeInsets.fromLTRB(30, 25, 0, 25),
                child: Row(
                  children: [
                    Text(
                      "아이프로필",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'NotoSansCJKKR',
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width - 140),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Color.fromRGBO(155, 155, 155, 1.0),
                    )
                  ],
                )
            ),
          ),
          Container(
            color: Color(0xfff0f0f0),
            height: 4,
          ),
          InkWell(
            onTap: () {
            },
            child: Container(
                padding: EdgeInsets.fromLTRB(30, 25, 0, 25),
                child: Row(
                  children: [
                    Text(
                      "비밀번호 변경",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'NotoSansCJKKR',
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width - 157),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Color.fromRGBO(155, 155, 155, 1.0),
                    )
                  ],
                )
            ),
          ),
          Container(
            color: Color(0xfff0f0f0),
            height: 4,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/inquiry');
            },
            child: Container(
                padding: EdgeInsets.fromLTRB(30, 25, 0, 25),
                child: Row(
                  children: [
                    Text(
                      "1:1 문의하기",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'NotoSansCJKKR',
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width - 149),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Color.fromRGBO(155, 155, 155, 1.0),
                    )
                  ],
                )
            ),
          ),
          Container(
            color: Color(0xfff0f0f0),
            height: 4,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/withdraw');
            },
            child: Container(
                padding: EdgeInsets.fromLTRB(30, 25, 0, 25),
                child: Row(
                  children: [
                    Text(
                      "회원탈퇴",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'NotoSansCJKKR',
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width - 126),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Color.fromRGBO(155, 155, 155, 1.0),
                    )
                  ],
                )
            ),
          ),
          Container(
            color: Color(0xfff0f0f0),
            height: 4,
          ),
        ],
      );

    throw UnimplementedError();
  }

}

/*import 'package:flutter/material.dart';
import 'package:card_settings/card_settings.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'user.dart';



typedef LabelledValueChanged<T, U> = void Function(T label, U value);
bool loaded = false;
//SettingModel _settingModel;
AutovalidateMode _autoValidateMode = AutovalidateMode.onUserInteraction;
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final GlobalKey<FormState> _themeKey = GlobalKey<FormState>();


final FocusNode _nameNode = FocusNode();
final FocusNode _descriptionNode = FocusNode();

class settingPage extends StatefulWidget{

  //@override
  //_settingPageState createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {

  @override
  Widget build(context){
    var orientation = MediaQuery.of(context).orientation;
    bool _showMaterialonIOS = true;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final GlobalKey<ExampleFormState> _formWidgetKey =
    GlobalKey<ExampleFormState>();
    void showSnackBar(String label, dynamic value) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 1),
          content: Text(label + ' = ' + value.toString()),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "설정",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.check,
            ),
            color: Colors.black54,
            onPressed: () {
              final form = _formKey.currentState;
              /*if (form.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("반영 되었습니다.")));
                Navigator.pop(context);
              } else {

              }*/
            },
          ),
        ],
      ),
      body: ExampleForm(orientation, _showMaterialonIOS, _scaffoldKey,
          key: _formWidgetKey, onValueChanged: showSnackBar),
    );
  }
}

class ExampleForm extends StatefulWidget {
  const ExampleForm(
      this.orientation,
      this.showMaterialonIOS,
      this.scaffoldKey, {
        //this.onValueChanged,
        //Key key,
      }) : super(key: key);

  final Orientation orientation;
  final bool showMaterialonIOS;
  final GlobalKey<ScaffoldState> scaffoldKey;

  final LabelledValueChanged<String, dynamic> onValueChanged;

  @override
  ExampleFormState createState() => ExampleFormState();
}

class ExampleFormState extends State<ExampleForm> {

  @override
  void initState() {
    super.initState();

    initModel();
  }

  void initModel() async {
    //_settingModel = SettingModel();

    setState(() => loaded = true);
  }

  @override
  Widget build(BuildContext context) {
    if (loaded) {
      return Form(
        key: _formKey,
        child: (widget.orientation == Orientation.portrait)
            ? _buildPortraitLayout()
            : _buildLandscapeLayout(),
      );
    } else {
      return Center(child: CircularProgressIndicator());
    }
  }

  Future savePressed() async {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      print("저장되었습니다.");
    } else {
      print("실패함");
      setState(() => _autoValidateMode = AutovalidateMode.onUserInteraction);
    }
  }

  void canclePressed() {

  }

  void resetPressed() {
    setState(() => loaded = false);

    initModel();

    _formKey.currentState.reset();
  }
  CardSettings _buildPortraitLayout() {
    return CardSettings.sectioned(
      showMaterialonIOS: widget.showMaterialonIOS,
      labelWidth: 150,
      contentAlign: TextAlign.right,
      cardless: false,
      children: <CardSettingsSection>[
        CardSettingsSection(
          children: <CardSettingsWidget>[
            _buildCardSettingsListPicker_Theme(),
            //_buildCardSettingsVersion(),
            //_buildCardSettingsUpdate(),
            //_buildCardSettingsLogout(),
            _buildCardSettingsButton_Logout(),
          ],
        ),
        CardSettingsSection(
          children: <CardSettingsWidget>[
          ],
        ),
      ],
    );
  }

  CardSettings _buildLandscapeLayout() {
    return CardSettings.sectioned(
      showMaterialonIOS: widget.showMaterialonIOS,
      labelPadding: 12.0,
      children: <CardSettingsSection>[
        CardSettingsSection(
          children: <CardSettingsWidget>[
            //_buildCardSettingsListPicker_Type(),
            CardFieldLayout(
              <CardSettingsWidget>[
                //_buildCardSettingsNumberPicker_Age(labelAlign: TextAlign.right),
              ],
              flexValues: [2, 1],
            ),
            _buildCardSettingsListPicker_Theme(),
            //_buildCardSettingsVersion(),
            //_buildCardSettingsUpdate(),
            //_buildCardSettingsLogout(),
          ],
        ),
        CardSettingsSection(
          children: <CardSettingsWidget>[
            CardFieldLayout(<CardSettingsWidget>[
              //_buildCardSettingsButton_Save(),
              //_buildCardSettingsButton_Reset(),
            ]),
          ],
        ),
      ],
    );
  }

  CardSettingsButton _buildCardSettingsButton_Logout() {
    return CardSettingsButton(
      label: "로그아웃",
      backgroundColor: Colors.white,
      //backgroundColor: Color(0xffd7f2d3),
      //backgroundColor: Colors.green,
      onPressed: (){
        //FirebaseAuth.instance.signOut();
        Navigator.pushReplacementNamed(
          context,
          '/login',
        );
      },
    );
  }
  CardSettingsListPicker _buildCardSettingsListPicker_Theme() {
    return CardSettingsListPicker(
      key: _themeKey,
      label: '테마',
      initialValue: _settingModel.theme,
      autovalidateMode: _autoValidateMode,
      options: allThemes,
      values: allThemesValues,
      validator: (String value) {
        if (value == null || value.isEmpty) return '선택해주세요.';
        if (value != 'g' ) return '현재 지원되지 않는 기능입니다';
        return null;
      },
      onSaved: (value) => _settingModel.theme = value,
      onChanged: (value) {
        setState(() {
          //_settingModel.theme = value;

        });
      },
    );
  }
}*/