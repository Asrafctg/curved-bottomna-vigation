import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPostPage extends StatefulWidget {

  @override
  _AddPostPageState createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Post Page'),
      ),
    );
  }
}
