 import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  final String title;
  Header({this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25,bottom: 5,right: 5,top: 20,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Text(title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: IconButton(onPressed: (){},
              icon: Icon(Icons.search_sharp),

            ),
          ),
        ],
      ),
    );
  }
}