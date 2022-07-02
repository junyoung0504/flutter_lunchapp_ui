import 'package:flutter/material.dart';

import 'create_blog.dart';

class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("급식자랑"),
        centerTitle: true,
      ),
      body: Container(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreateBlog()));
            },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
