import 'package:flutter/material.dart';
class mainCard extends StatelessWidget {
final String bgimage;
final int selected;
mainCard({this.bgimage,this.selected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      width: 350,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage("$bgimage"),
          fit: BoxFit.cover,
        ),
      ),

    );
  }
}
