import 'package:flutter/material.dart';
class mainCard extends StatelessWidget {
final ImageProvider bgimage;
mainCard({this.bgimage});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: bgimage,
          fit: BoxFit.cover,

        ),
      ),

    );
  }
}
