import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF514F4F),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color(0x88FFFFFF),
                  width: 1
                )
              ),
              width: 343,
              height: 48,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  prefixIcon: Icon(Icons.search, color: Colors.white,),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    height: 1,

                  )
                ),
                style: TextStyle(color: Colors.white),

              ),
            ),
          ],
        ),
        SizedBox(height: 250,),
        Image.asset("assets/images/Icon_material-local-movies.png", scale: 3,),

        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text("No movies found", style: TextStyle(
            color: Color(0x81FFFFFF),
            fontSize: 13,
          )),
        )
      ]),
    );
  }
}
