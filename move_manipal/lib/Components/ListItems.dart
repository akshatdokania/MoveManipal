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
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),

          ),
          SizedBox(
            height: 10,,
          ),
          Text(
            desc,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15.0,
            ),
          )
        ],
      ),
    );
  }
}
