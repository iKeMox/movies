import 'package:flutter/material.dart';

import '../widgets/movie_card.dart';

class VideoPlay extends StatelessWidget {
  const VideoPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1E1D),
        title: Text("Dora and the lost",style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Color(0xFF121312),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 412,
                  height: 217,
                  margin: EdgeInsets.only(top: 28),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Image.png"),
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
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding:const EdgeInsets.only(left: 22,),
              child: Row(
                children: [
                  Text("Dora and the lost city of gold",
                    style: TextStyle(fontSize: 18,color: Color(0xFFCBCBCB)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Text("2019 PG-13th 2h 7m  ",
                    style: TextStyle(fontSize: 10,color: Color(0xFFCBCBCB)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Stack(
                      children: [
                        Container(
                          child: Image.asset("assets/images/Image.png",
                            width: 129,
                            height: 199,
                          ),
                        ),

                        Container(
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
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 25,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(width: 1,color: Color(0xFF514F4F)),),

                        child: Center(
                          child: Text("Action",
                            style: TextStyle(fontSize: 10,color: Color(0xFFCBCBCB)),),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Having spent most of her life \n"
                          "exploring the jungle, nothing could\n"
                          " prepare Dora for her most dangerous\n"
                          " adventure yet — high school. ",style: TextStyle(color: Color(0xFFCBCBCB)),),
                      Padding(
                        padding: const EdgeInsets.only(right: 180,top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Color(0xFFFFBB3B),size:35 ),
                            Text("7.7",style: TextStyle(fontSize:18,color: Color(0xFFCBCBCB)),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Color(0xFF282A28),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                    color: Color(0xFF282A28),
                    child: Text("More Like This",
                      style: TextStyle(fontSize: 25,color: Color(0xFFCBCBCB)),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MovieCard(),
                        MovieCard(),
                        MovieCard(),
                        MovieCard(),
                        MovieCard(),
                        MovieCard(),
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