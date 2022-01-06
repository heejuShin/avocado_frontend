import 'package:flutter/material.dart';

class AiTalkPage extends StatefulWidget {
  @override
  _AiTalkPageState createState() => _AiTalkPageState();
}

class _AiTalkPageState extends State<AiTalkPage> {
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
                  height: MediaQuery.of(context).size.height * 0.7,
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

          ],
        )
    );

    throw UnimplementedError();
  }

}