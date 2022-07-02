import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lunchapp/more/evaluation_screen.dart';
import 'package:lunchapp/more/info_screen.dart';
import '../more/display_screen.dart';
import '../more/inquiry_screen.dart';
import '../more/notice_screen.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("더보기"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ListTile(
            leading: Icon(FontAwesomeIcons.sun),
            title: Text('화면설정'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DisplayScreen()));
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.bell),
            title: Text('알림설정'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NoticeScreen()));
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.star),
            title: Text('평가하기'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EvaluationScreen()));
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.envelope),
            title: Text('문의하기'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InquiryScreen()));
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.infoCircle),
            title: Text('정보'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InfoScreen()));
            },
          ),
        ],
      ),
    );
  }
}
