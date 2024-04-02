import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        margin: EdgeInsets.only(left: 8),
        height: 190,
        width: 97,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Color(0xff343534),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Image.asset("assets/images/Image.png",fit: BoxFit.cover,),
                  Positioned(
                    right: 60,
                    child: LikeButton(
                      likeBuilder: (isLiked) {
                        if (isLiked) {
                          return Image.asset("assets/icons/bookmark_saved.png");
                        }
                        if (!isLiked) {
                          return Image.asset("assets/icons/bookmark.png");
                        }
                      },
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.star_rounded, color: Colors.amber,size: 15,),
                        Text("7.7", style: TextStyle(fontSize: 10, color: Colors.white),),
                      ],
                    ),
                    Text("Movie Name", style: TextStyle(fontSize: 10, color: Colors.white),),
                    Text("2018  R  1h 59me", style: TextStyle(fontSize: 8, color: Color(0xffB5B4B4)),),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
