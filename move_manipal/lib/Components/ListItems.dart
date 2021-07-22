import 'package:flutter/material.dart';
class Card extends StatelessWidget {
final ImageProvider img;
final String title;
final String desc;
Card({this.img,this.title,this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: img,
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}
