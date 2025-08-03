import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
            'https://media.themoviedb.org/t/p/w500_and_h282_face/b0PlSFdDwbyK0cf5RxwDpaOJQvQ.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: kBlackColor.withAlpha(100),
            radius: 25,
            child: IconButton(
              color: kWhiteColor,
              onPressed: () {},
              icon: Icon(Icons.volume_mute_outlined),
            ),
          ),
        ),
      ],
    );
  }
}
