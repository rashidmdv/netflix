import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String appBarTitle;

  const AppBarWidget({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          appBarTitle,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cast),
          color: kWhiteColor,
        ),
        kWidth,
        Container(color: kBlueColor, width: 30, height: 30),
        kWidth,
      ],
    );
  }
}
