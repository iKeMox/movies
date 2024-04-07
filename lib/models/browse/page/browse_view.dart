// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Category.dart';
import 'Category_Model.dart';

class BrowseView extends StatefulWidget {
  const BrowseView({super.key});

  @override
  State<BrowseView> createState() => _BrowseViewState();
}

class _BrowseViewState extends State<BrowseView> {
  @override
  final List<Category_Model> CategoriesList = [
    Category_Model(
      id: "Action",
      title: "Action",
      image: "assets/Category/Action.jpeg",
    ),
    //____________________________
    Category_Model(
      id: "Comedy",
      title: "Comedy",
      image: "assets/Category/Comedy.jpeg",
    ),
    //__________________________
    Category_Model(
      id: "Documentary",
      title: "Documentary",
      image: "assets/Category/Documentary.jpeg",
    ),
    //_________________________
    Category_Model(
      id: "Drama",
      title: "Drama",
      image: "assets/Category/Drama.jpg",
    ),
    //_______________________
    Category_Model(
      id: "Fantasy",
      title: "Fantasy",
      image: "assets/Category/Fantasy.jpeg",
    ),
    //________________________
    Category_Model(
      id: "Horror",
      title: "Horror",
      image: "assets/Category/Horror.jpeg",
    ),
  ];

  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: 4 / 5),
              itemBuilder: (context, index) => Category(
                index: index,
                categoryModel: CategoriesList[index],
              ),
              itemCount: 6,
            ),
          ),
        )
      ],
    );
  }
}
