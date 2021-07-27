import 'package:flutter/material.dart';
class HeaderPlaces extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: IconButton(onPressed: (){},
          icon: Icon(Icons.search_sharp),

      ),
    );
  }
}

// TextField(
// decoration: InputDecoration(
// fillColor: Color(0xFF202762),
// filled: true,
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10.0),
// ),
// suffixIcon: Container(
// padding: EdgeInsets.all(10.0),
// decoration: BoxDecoration(
// color: Color(0xFF6275A5),
// borderRadius: BorderRadius.circular(10.0),
// ),
// child: Icon(
// Icons.search,
// ),
// ),
// ),
// );