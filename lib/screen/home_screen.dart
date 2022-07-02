import 'package:flutter/material.dart';
import 'package:lunchapp/screen/search%20Page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("점심먹자"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => SearchPage())),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
