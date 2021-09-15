import 'package:flutter/material.dart';
import 'package:manipalmove/Screens/Places.dart';
import 'package:manipalmove/Screens/Food.dart';
import 'package:manipalmove/Screens/Essentials.dart';
import 'package:manipalmove/Components/theme.dart';
import 'package:manipalmove/Screens/Vehicles.dart';
MyTheme currentTheme = MyTheme();
const Color clr = Color(0xFF272727);
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _curIndex = 0;
  final List<Widget> screens = [
    Food(),
    Places(),
    Vehicles(),
    Essentials(),
  ];

  void onTappedBar(int index){
    setState(() {
      _curIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: screens[_curIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          // boxShadow: <BoxShadow>[
          //   BoxShadow(
          //     color: Colors.grey,
          //     blurRadius: 10,
          //   ),
          // ],
        ),
        child: BottomNavigationBar(
          currentIndex: _curIndex,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_pizza,
                size: 25,
                color: Color(0xFFF07C05),
              ),
              label: 'Binge',

              backgroundColor: clr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.place,
                size: 25,
                color: Color(0xFF369D8B),
              ),
              label: 'Places',
              backgroundColor: clr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.car_rental,
                size: 25,
                color: Colors.yellow,
              ),
              label: 'Rentals',
              backgroundColor: clr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services,
                size: 25,
                color: Color(0xFF7CD92B),
              ),
              label: 'Essentials',
              backgroundColor: clr
            ),


          ],
          onTap: onTappedBar,
        ),
      ),
    );
  }
}