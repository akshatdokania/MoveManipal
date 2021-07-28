import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:move_manipal/object.dart';
import 'package:move_manipal/Components/MainCard.dart';
import 'package:move_manipal/Components/ListItems.dart';
import 'package:move_manipal/Components/Header.dart';
import 'package:move_manipal/Components/bottomAppBar.dart';


class Essentials extends StatefulWidget {
  static const String id ='Essentials';
  @override
  _EssentialsState createState() => _EssentialsState();
}

class _EssentialsState extends State<Essentials> {

  @override
  Widget build(BuildContext context) {

    var obj = new Head();
    var broadItem = obj.essentials;
    var upRowMap = broadItem[0];
    var downRow = Map<String,dynamic>.from(broadItem[1]);
    String selected;
    int sel;
    var imageList = upRowMap.values.toList();
    var keyList = upRowMap.keys.toList();
    sel = 0;
    selected = keyList[sel];
    var lowerShow = downRow['$selected'];
    var placeList = lowerShow.keys.toList();
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 10,)),
              Header(
                title: 'Essentials',
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: upRowMap.length,
                    itemBuilder: (BuildContext context, int index){
                      var photu = imageList[index];
                      return Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: mainCard(
                            bgimage: photu),
                      );
                    }),
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: placeList.length,
                    itemBuilder : (BuildContext context, int index){
                      var place = placeList[index];
                      return Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: LowerCard(
                          title: place,
                          img: lowerShow[place][0],
                        ),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}



