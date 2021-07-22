import 'package:flutter/material.dart';
import 'package:move_manipal/object.dart';
class Places extends StatefulWidget {


  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  var obj = new Head();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF05081B),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(onPressed: (){},
                icon: Icon(
                    Icons.local_pizza,
                    color: Colors.red,
                ),
            ),
            IconButton(onPressed: (){},
                icon: Icon(
                    Icons.place,
                    color: Colors.red,
                ),
            ),
            IconButton(onPressed: (){},
                icon: Icon(
                    Icons.car_rental,
                    color: Colors.red,
                ),
            ),
            IconButton(onPressed: (){},
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 15.0)),
                    Text('DESTINATIONS',
                    style: TextStyle(
                      color: Color(0xFF9DEBE5),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color(0xFF202762),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Color(0xFF6275A5),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Icon(
                              Icons.search,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                ListView.builder(
                    itemCount: obj.places.length,
                    itemBuilder: (context,index){
                          obj.places.forEach((dest, destdetails) {

                          })
                    }),
                ListView.builder(
                  itemCount: ,
                    itemBuilder: itemBuilder)
              ],
          )),
    );
  }
}
