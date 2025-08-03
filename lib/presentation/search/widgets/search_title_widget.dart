import 'package:flutter/material.dart';

class SearchTitleWidget extends StatelessWidget {
  final String searchTitle;

  const SearchTitleWidget({super.key, required this.searchTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      searchTitle,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
