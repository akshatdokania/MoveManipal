import 'package:flutter/material.dart';
class NewListView extends StatelessWidget {
  final String img;
  final String title;
  final String desc;
  final Color color;
  NewListView({this.title, this.img, this.desc, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.175,
        child: Card(
          elevation: 5,
          color: Color(0xFF1E1E1E),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 5,
                child: Container(
                  color: color,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("$img"),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.08,
                    width: MediaQuery.of(context).size.width*0.55,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1.0),
                      child: Center(
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,

                            fontFamily: 'FredokaOne'

                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.085,
                    width: MediaQuery.of(context).size.width*0.51,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 3.0),
                      child: Text(
                        desc.length<100 ? desc : desc.substring(0,105) + '...',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontFamily: 'JosefinSans'

                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}















