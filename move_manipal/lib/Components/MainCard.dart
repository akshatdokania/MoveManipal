import 'package:flutter/material.dart';
class mainCard extends StatelessWidget {
final String bgimage;
final int selected;
final Function onpressed;
mainCard({this.bgimage,this.selected,this.onpressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        // padding: EdgeInsets.all(20.0),
        height: 200,
        width: MediaQuery.of(context).size.width - 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage("$bgimage"),
            fit: BoxFit.cover,
          ),
        ),

      ),
    );
  }
}
