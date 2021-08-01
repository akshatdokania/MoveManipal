import 'package:flutter/material.dart';
class PopUpCard extends StatelessWidget {
final String imgpath;
final String title;
final String desc;
PopUpCard({this.imgpath,this.title,this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgpath),
                fit: BoxFit.cover,
              )

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 30.0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: ()=>Navigator.pop(context),
                          icon: Icon(Icons.chevron_left_outlined,
                                color: Colors.white,
                            size: 40.0,
                          ),
                      ),
                    ],
                  ),
                ),
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
