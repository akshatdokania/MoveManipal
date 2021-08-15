import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manipalmove/object.dart';
import 'package:manipalmove/Components/MainCard.dart';
import 'package:manipalmove/Components/ListItems.dart';
import 'package:manipalmove/Components/Header.dart';
import 'package:manipalmove/Components/bottomAppBar.dart';
import 'package:manipalmove/Screens/PopUpCard.dart';

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
      bottomNavigationBar: bottomBar(),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Header(
                title: 'DESTINATIONS',
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
              // Padding(
              //   padding: EdgeInsets.only(left: 15,bottom: 25,right: 15,),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: <Widget>[
              //     Text('Hot Destinations',
              //       style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 18.0,
              //       fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //       Text('More',
              //         style: TextStyle(
              //           color: Colors.white70,
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 350,
                width: double.infinity,
                child: GridView.builder(

                    itemCount: placeList.length,
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    itemBuilder: (BuildContext context, int index){
                      var place = placeList[index];
                      return Padding(
                        padding: EdgeInsets.only(left: 20,right: 20),
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
                          child: LowerCard(
                            title: place,
                            img: lowerShow[place][0],
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





// ListView.builder(
// scrollDirection: Axis.horizontal,
// shrinkWrap: true,
// itemCount: placeList.length,
// itemBuilder : (BuildContext context, int index){
// var place = placeList[index];
// return Padding(
// padding: EdgeInsets.only(left: index==0?20:0,right: 10),
// child: GestureDetector(
// onTap: ()=>{
// Navigator.push(context, MaterialPageRoute(builder: (context)=>
// PopUpCard(
// imgpath: lowerShow[place][0],
// title: place,
// desc: lowerShow[place][1],
// latitude: lowerShow[place][3],
// longitude: lowerShow[place][4],
// phonenumber: lowerShow[place][2],
// ),
// ),),
// },
// child: LowerCard(
// title: place,
// img: lowerShow[place][0],
// ),
// ),
// );
// }),