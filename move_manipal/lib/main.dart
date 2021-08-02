import 'package:flutter/material.dart';
import 'package:manipalmove/Screens/Places.dart';
import 'package:manipalmove/Screens/Food.dart';
import 'package:manipalmove/Screens/Essentials.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: Places.id,
      routes: {
        Places.id: (context)   =>Places(),
        Food.id: (context) => Food(),
        Essentials.id:(context) => Essentials(),
      },
    );
  }
}

