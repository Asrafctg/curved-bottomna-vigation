import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curvedbottomnavigation/layouts/addpostpage.dart';
import 'package:curvedbottomnavigation/layouts/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'layouts/hompage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  _State createState() => _State();
}

class _State extends State<HomePage> {
  int pageindex = 0;
  final pages = [NewHomePage(),AddPostPage(),ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageindex],
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 50,
        buttonBackgroundColor: Colors.blueAccent,
        items:<Widget> [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.add,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.black,
          ),
        ],
        onTap: (value){
          setState(() {
            pageindex = value;
          });
        },
      ),
    );
  }
}
