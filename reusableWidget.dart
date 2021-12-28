import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customContainer(String imageurl, String title, int price,context) {
  final size = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(32.0),
      color: Colors.red,
    ),
    height: 300,
    width: double.infinity,
    child: Column(
      children: [
        Expanded(
          flex: 4,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(32.0),
                child: Image.network(imageurl,
                fit: BoxFit.cover,
                width: 500,),
              ),
              Positioned(
                bottom: 5,
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                      height: 50,
                      width: size.width,
                      color: Colors.green,
                      child: Center(child: Text("Price: "+price.toString(),style:
                        TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:
                        Colors.white),),)
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: Text(title),
          ),
        )
      ],
    ),
  );
}
