import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.google.com/intl/ko/gmail/about/');

class InquiryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("이메일"),
        ),
        body: Column(
          children: [
            Container(
              width: 300,
              height: 200,
              child: Text(
                "~~~~~ 로 보내주시면 감사하겠습니다",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Material(
              child: Center(
                child: RaisedButton(
                  onPressed: _launchUrl,
                  child: Text("이메일 작성하기"),
                ),
              ),
            ),
          ],
        ));
  }
}

void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
