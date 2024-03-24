import 'package:flutter/material.dart';
import 'package:movies_app/video_play.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 412,
                height: 217,
                margin: EdgeInsets.only(top: 28),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assests/images/Image.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 80),
                    IconButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => VideoPlay(),),);
                    },
                      icon: Icon(
                      Icons.play_circle_fill,
                      color: Colors.white,
                      size: 50,
                    ),)
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  child: Image.asset("assests/images/Image.png"),
                ),
              ),
            ],
          ),

          //-----------------------------------------------------

          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                    child: Text("New Releases",
                    style: TextStyle(fontSize: 25),
                    ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),


                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                  child: Text("Recomended",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),


                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assests/images/Image.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
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
