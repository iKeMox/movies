import 'package:flutter/material.dart';

class VideoPlay extends StatelessWidget {
  const VideoPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Dora and the lost"),
      ),
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
              ],
            ),

            Text("Dora and the lost city of gold",
            style: TextStyle(fontSize: 25),
            ),

            Text("2019 PG-13th 2h 7m  ",
              style: TextStyle(fontSize: 10),
            ),

            Row(
              children: [
                Image.asset("assests/images/Image.png"),
                SizedBox(width: 20,),
                Column(
                  children: [
                    //------------------------------------------>>>
                    Text("data adsdnskdns\n"
                        "sadjsdkjsakdjskdj\n"),
                    Row(
                      children: [
                        Icon(Icons.star),
                      Text("7.7"),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              child: Text("More Like This",
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
          ],
        ),
      ),
    );
  }
}
