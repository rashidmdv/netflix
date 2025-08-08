import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  final String posterPath;
  final String movieName;
  final String description;
  const EveryOnesWatchingWidget({
    super.key,
    required this.posterPath,
    required this.movieName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          Text(
            "Friends",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          kHeight,
          Text(
            "Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence — and her relationship — into a tailspin.",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          kHeight,
          VideoWidget(),
          kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomHomeButtonWidget(
                icon: Icons.share,
                title: "Share",
                iconSize: 25,
                textSize: 14,
              ),
              kWidth,
              CustomHomeButtonWidget(
                icon: Icons.add,
                title: "My List",
                iconSize: 25,
                textSize: 14,
              ),
              kWidth,
              CustomHomeButtonWidget(
                icon: Icons.play_arrow,
                title: "Play",
                iconSize: 25,
                textSize: 14,
              ),
              kWidth,
            ],
          ),
        ],
      ),
    );
  }
}
