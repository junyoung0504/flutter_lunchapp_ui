import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      WidgetsBinding.instance
                          .addPostFrameCallback((_) => _controller.clear());
                    },
                  ),
                  hintText: '학교 검색',
                  border: InputBorder.none),
            ),
          ),
        ),
      ),
    );
  }
}
