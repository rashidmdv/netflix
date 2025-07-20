import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class CustomHomeButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;


  const CustomHomeButtonWidget({
    super.key,
    required this.icon,
    required this.title, this.iconSize=30,  this.textSize=17,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: kWhiteColor, size: iconSize),
        Text(title, style: TextStyle(fontSize: textSize)),
      ],
    );
  }
}
