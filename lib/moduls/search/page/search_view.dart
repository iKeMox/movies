import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Search View",style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}
