import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image1),
            fit: BoxFit.cover,
          ),
          borderRadius: kBorderRadius10,
        ),
      ),
    );
  }
}
