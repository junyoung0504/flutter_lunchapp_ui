import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CreateBlog extends StatefulWidget {
  @override
  State<CreateBlog> createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  File? _image;

  final _picker = ImagePicker();

  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  late String authorName, title, desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("글쓰기"),
          centerTitle: true,
          elevation: 0.0,
          actions: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.file_upload)),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(6)),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 150,
                  child: _image != null
                      ? Image.file(_image!, fit: BoxFit.cover)
                      : const Text('이미지를선택해주세요'),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: ElevatedButton(
                    child: const Text('이미지선택'),
                    onPressed: _openImagePicker,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(hintText: "이름"),
                        onChanged: (val) {
                          authorName = val;
                        },
                      ),
                      TextField(
                        decoration: InputDecoration(hintText: "제목"),
                        onChanged: (val) {
                          title = val;
                        },
                      ),
                      TextField(
                        decoration: InputDecoration(hintText: "내용"),
                        onChanged: (val) {
                          desc = val;
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
