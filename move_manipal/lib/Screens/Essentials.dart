import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manipalmove/object.dart';
import 'package:manipalmove/Components/MainCard.dart';
import 'package:manipalmove/Components/ListItems.dart';
import 'package:manipalmove/Components/Header.dart';
import 'package:manipalmove/Components/bottomAppBar.dart';
import 'package:manipalmove/Screens/PopUpCard.dart';

class Essentials extends StatefulWidget {
  static const String id ='Essentials';
  @override
  _EssentialsState createState() => _EssentialsState();
}

class _EssentialsState extends State<Essentials> {
  int sel=0;
  var obj = new Head();

  @override
  Widget build(BuildContext context) {
    var broadItem = obj.essentials;
    var upRowMap = broadItem[0];
    var downRow = Map<String,dynamic>.from(broadItem[1]);
    String selected;
    var imageList = upRowMap.values.toList();
    var keyList = upRowMap.keys.toList();

    selected = keyList[sel];
    var lowerShow = downRow['$selected'];
    var placeList = lowerShow.keys.toList();
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      body: SafeArea(
          child: Column(
            children: <Widget>[

              Header(
                title: 'ESSENTIALS',
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
              Padding(
                padding: EdgeInsets.only(left: 15,bottom: 25,right: 15,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Top Picks',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('More',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: placeList.length,
                    itemBuilder : (BuildContext context, int index){
                      var place = placeList[index];
                      return Padding(
                        padding: EdgeInsets.only(left: index==0?20:0,right: 10),
                        child: GestureDetector(
                          onTap: ()=>{
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                PopUpCard(
                                  imgpath: lowerShow[place][0],
                                  title: place,
                                  desc: lowerShow[place][1],
                                ),
                            ),),
                          },
                          child: LowerCard(
                            title: place,
                            img: lowerShow[place][0],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}




