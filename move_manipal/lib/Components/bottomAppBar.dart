import 'package:flutter/material.dart';
import 'package:manipalmove/Screens/Places.dart';
import 'package:manipalmove/Screens/Food.dart';
import 'package:manipalmove/Screens/Essentials.dart';
class bottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black87,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(onPressed: (){
            Navigator.pushNamed(context, Food.id);
          },
            icon: Icon(
              Icons.local_pizza,
              color: Colors.red,
            ),
          ),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, Places.id);
          },
            icon: Icon(
              Icons.place,
              color: Colors.red,
            ),
          ),
          IconButton(onPressed: (){

          },
            icon: Icon(
              Icons.car_rental,
              color: Colors.red,
            ),
          ),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, Essentials.id);
          },
            icon: Icon(
              Icons.medical_services,
              color: Colors.red,
            ),
          ),

        ],
      ),
    );
  }
}
