import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../widgets/movie_card.dart';
import '../widgets/movie_poster.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121312),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(

              items: const [
                MoviePoster(),
                MoviePoster(),

              ], options: CarouselOptions(height: 300,
              viewportFraction: 1,
              autoPlay: true,
            ),
            ),


            const SizedBox(height: 20,),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              color: const Color(0xFF282A28),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 12),
                    color: const Color(0xFF282A28),
                    child: const Text("New Releases",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                    ),
                  ),
                  const SingleChildScrollView(
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

            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              color: const Color(0xFF282A28),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 12),
                    color: const Color(0xFF282A28),
                    child: const Text("Recomended",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                    ),
                  ),
                  const SingleChildScrollView(
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