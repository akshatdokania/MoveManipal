 import 'package:flutter/material.dart';
import 'package:manipalmove/Components/theme.dart';
import 'package:manipalmove/main.dart';
class Header extends StatefulWidget {
  final String title;
  Header({this.title});

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'FredokaOne'
            ),
          ),
        ),
      ),
    );
  }
}
