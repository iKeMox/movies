import 'package:flutter/material.dart';
import 'package:movies_app/home/video_play.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121312),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment(0,2),
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
                        size: 60,
                      ),)
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 150,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                        child: Image.asset("assests/images/Image.png",
                            width: 129,
                            height: 199,
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Stack(
                          children: [
                            Icon(Icons.bookmark,color: Color(0xDE514F4F),size: 35,),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                child: Icon(
                                  Icons.add,color: Colors.white,size: 15,)
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 50,left:110),
                  child: Column(
                    children: [
                      Text("Dora and the Lost city of gold",style: TextStyle(fontSize: 14,color: Colors.white),),
                      Padding(
                        padding: const EdgeInsets.only(right: 90,top:15),
                        child: Text("2019  PG-13  2h 7m",style: TextStyle(fontSize: 10,color: Colors.white),),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 140,),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Color(0xFF282A28),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                    color: Color(0xFF282A28),
                      child: Text("New Releases",
                      style: TextStyle(fontSize: 25,color: Colors.white),
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
                ],
              ),
            ),

            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Color(0xFF282A28),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                    color: Color(0xFF282A28),
                    child: Text("Recomended",
                      style: TextStyle(fontSize: 25,color: Colors.white),
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
      ),

    );
  }
}
