import 'package:curvedbottomnavigation/customWidgets/reusableWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewHomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<NewHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('You clicked on First Position')));
              },
                child: customContainer("https://cdn.pixabay.com/photo/2021/12/17/11/44/woman-6876298_1280.jpg", 'A Girl', 1200,context)),
            customContainer("https://cdn.pixabay.com/photo/2021/12/18/07/55/cup-6878196_1280.jpg",'Coffee',200,context),
            customContainer("https://cdn.pixabay.com/photo/2021/12/18/07/55/cup-6878196_1280.jpg",'Coffee',200,context),
            customContainer("https://cdn.pixabay.com/photo/2021/12/18/07/55/cup-6878196_1280.jpg",'Coffee',200,context),
            customContainer("https://cdn.pixabay.com/photo/2021/12/18/07/55/cup-6878196_1280.jpg",'Coffee',200,context),
            customContainer("https://cdn.pixabay.com/photo/2021/12/18/07/55/cup-6878196_1280.jpg",'Coffee',200,context),
            customContainer("https://cdn.pixabay.com/photo/2021/12/18/07/55/cup-6878196_1280.jpg",'Coffee',200,context),
            customContainer("https://cdn.pixabay.com/photo/2021/12/18/07/55/cup-6878196_1280.jpg",'Coffee',200,context),
          ],
        ),
      )
    );
  }
}
