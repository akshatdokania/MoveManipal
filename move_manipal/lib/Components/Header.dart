import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  final String title;
  Header({this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 15.0,bottom: 10.0)),
        Text(title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),
        ),
        Spacer(),
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
    );
  }
}