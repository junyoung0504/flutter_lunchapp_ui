import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("화면 설정"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ListTile(
            leading: Icon(FontAwesomeIcons.brush),
            title: Text('다크모드'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
