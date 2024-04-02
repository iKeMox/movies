import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:movies_app/modules/home/page/video_play.dart';
import 'package:movies_app/modules/home/widgets/movie_card.dart';


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
                  margin: EdgeInsets.only(top: 30),
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
                Positioned(
                  left: 20,
                  top: 125,
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset("assets/images/Image.png", width: 109, height: 199, fit: BoxFit.cover,),
                      ),

                      LikeButton(
                        likeBuilder: (isLiked) {
                          if (isLiked) {
                            return Image.asset("assets/icons/bookmark_saved.png");
                          }
                          if (!isLiked) {
                            return Image.asset("assets/icons/bookmark.png");
                          }
                        },
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 100,left:120),
                  child: Column(
                    children: [
                      Text("Dora and the Lost city of gold",style: TextStyle(fontSize: 14,color: Colors.white),),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Text("2019  PG-13  2h 7m",style: TextStyle(fontSize: 10,color: Color(0xFFB5B4B4)),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 100,),

            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              color: Color(0xFF282A28),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 12),
                    color: Color(0xFF282A28),
                    child: Text("New Releases",
                      style: TextStyle(fontSize: 15,color: Colors.white),
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

            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              color: Color(0xFF282A28),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 12),
                    color: Color(0xFF282A28),
                    child: Text("Recomended",
                      style: TextStyle(fontSize: 15,color: Colors.white),
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