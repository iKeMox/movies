import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/modules/home/widgets/movie_card.dart';
import 'package:movies_app/modules/home/widgets/movie_poster.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121312),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(

              items: [
                MoviePoster(),
                MoviePoster(),

              ], options: CarouselOptions(height: 300,
              viewportFraction: 1,
              autoPlay: true,
            ),
            ),
            

            SizedBox(height: 20,),

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