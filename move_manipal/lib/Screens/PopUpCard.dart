import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
class PopUpCard extends StatelessWidget {
final String imgpath;
final String title;
final String desc;
final String latitude;
final String longitude;
final String phonenumber;
PopUpCard({this.imgpath,this.title,this.desc,this.latitude,this.phonenumber,this.longitude});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgpath),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                  onPressed: ()=>Navigator.pop(context),
                  icon: Icon(Icons.chevron_left_outlined,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
            ],
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  height: 500,
                  padding: EdgeInsets.only(top: 20,left: 25,right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Colors.black,
                  ),
                  child: ListView(
                    children: [
                      Text(title,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(desc,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white54
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[

                          Buttonfunc(
                            iconb: Icons.navigation_sharp,
                            fn: (){
                              var lat = double.parse(latitude);
                              var long = double.parse(longitude);
                              MapsLauncher.launchCoordinates(lat,long);
                            },
                          ),
                         Buttonfunc(
                           iconb: Icons.call,
                           fn: () {
                             launch(('tel://${phonenumber}'));
                           },
                         ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

        ],
      ),
    );
  }
}

class Buttonfunc extends StatelessWidget {

final IconData iconb;
final Function fn;
Buttonfunc({this.iconb,this.fn});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Colors.white10,
      ),
      child: IconButton(
        onPressed: fn,
        icon: Icon(iconb),
        color: Colors.white54,

      ),
    );
  }
}