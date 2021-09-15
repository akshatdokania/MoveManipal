import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manipalmove/object.dart';
import 'package:manipalmove/Components/MainCard.dart';
import 'package:manipalmove/Components/ListItems.dart';
import 'package:manipalmove/Components/Header.dart';
import 'package:manipalmove/Components/bottomAppBar.dart';
import 'package:manipalmove/Screens/PopUpCard.dart';
import 'package:manipalmove/Components/NewListView.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Places extends StatefulWidget {
  static const String id ='Places';
  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
int sel=0;
var obj = new Head();

  @override
  Widget build(BuildContext context) {
    var broadItem = obj.places;
    var upRowMap = broadItem[0];
    var downRow = Map<String,dynamic>.from(broadItem[1]);
    String selected;
    var imageList = upRowMap.values.toList();
    var keyList = upRowMap.keys.toList();

    selected = keyList[sel];
    var lowerShow = downRow['$selected'];
    var placeList = lowerShow.keys.toList();
    return Scaffold(

      body: SafeArea(
          child: Column(
            children: <Widget>[
              Header(
                title: 'DESTINATIONS',
              ),
              Container(
                height: MediaQuery.of(context).size.height*.36,

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: upRowMap.length,
                    itemBuilder: (BuildContext context, int index){
                      var photu = imageList[index];
                      return Padding(
                        padding: EdgeInsets.only(left: index==0?15:0),
                        child: mainCard(
                            bgimage: photu,
                            onpressed: (){
                              setState(() {
                                sel=index;
                              });
                            },
                        ),
                      );
                    }),
              ),

              Container(
                height: MediaQuery.of(context).size.height/2.15,
                width: double.infinity,
                child: ListView.builder(

                    itemCount: placeList.length,

                    itemBuilder: (BuildContext context, int index){
                      var place = placeList[index];
                      return Padding(
                        padding: EdgeInsets.only(left: 0,right: 0),
                        child: GestureDetector(
                          onTap: ()=>{
                            showModalBottomSheet(
                              isScrollControlled: true,

                              context: context,
                              builder: (context)=>
                                PopUpCard(
                                  imgpath: lowerShow[place][0],
                                  title: place,
                                  desc: lowerShow[place][1],
                                  latitude: lowerShow[place][3],
                                  longitude: lowerShow[place][4],
                                  phonenumber: lowerShow[place][2],
                                ),
                            ),
                          },
                          child: NewListView(
                            title: place,
                            img: lowerShow[place][0],
                            desc: lowerShow[place][1],
                            color: Colors.teal,
                          ),
                        ),
                      );
                    }
              ),
              ),
            ],
          )),
    );
  }
}





