import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:move_manipal/object.dart';
import 'package:move_manipal/Components/MainCard.dart';
import 'package:move_manipal/Components/ListItems.dart';
import 'package:move_manipal/Components/HeaderPlaces.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var obj = new Head();
  var broadItem = obj.places;
  set
  @override
  Widget build(BuildContext context) {


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
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(onPressed: (){
              broadItem = obj.food;
            },
              icon: Icon(
                Icons.local_pizza,
                color: Colors.red,
              ),
            ),
            IconButton(onPressed: (){
              broadItem = obj.places;
            },
              icon: Icon(
                Icons.place,
                color: Colors.red,
              ),
            ),
            IconButton(onPressed: (){
              broadItem = obj.vehicle;
            },
              icon: Icon(
                Icons.car_rental,
                color: Colors.red,
              ),
            ),
            IconButton(onPressed: (){
              broadItem = obj.essentials;
            },
              icon: Icon(
                Icons.medical_services,
                color: Colors.red,
              ),
            ),

          ],
        ),
      ),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 10,)),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 15.0,bottom: 10.0)),
                  Text('DESTINATIONS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                 Spacer(),
                 HeaderPlaces(),
                ],
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

