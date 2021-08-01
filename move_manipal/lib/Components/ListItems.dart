import 'package:flutter/material.dart';
class LowerCard extends StatelessWidget {
final String img;
final String title;

LowerCard({this.title,this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(right: 10.0),
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage("$img"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5.0),
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0)
          ),

          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
