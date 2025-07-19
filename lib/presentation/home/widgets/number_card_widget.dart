import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class NumberCardWidget extends StatelessWidget {
  const NumberCardWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(width: 40),
              Container(
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
            ],
          ),
          Positioned(
            bottom: 0,
            left: 5,
            child: Text(
              index.toString(),
              style: TextStyle(
                fontSize: 120,
                fontWeight: FontWeight.w200,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 3
                  ..color = Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
