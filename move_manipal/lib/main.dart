import 'package:flutter/material.dart';
import 'package:manipalmove/Screens/Places.dart';
import 'package:manipalmove/Screens/Food.dart';
import 'package:manipalmove/Screens/Essentials.dart';
import 'package:manipalmove/Components/theme.dart';
import 'package:manipalmove/Screens/Vehicles.dart';
MyTheme currentTheme = MyTheme();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      themeMode: currentTheme.currentTheme(),
      initialRoute: Places.id,
      routes: {
        Places.id: (context)   =>Places(),
        Food.id: (context) => Food(),
        Essentials.id:(context) => Essentials(),
        Vehicles.id:(context)=> Vehicles(),
      },
    );
  }
}

