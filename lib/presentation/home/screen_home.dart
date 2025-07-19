import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';

import 'package:netflix/presentation/widgets/main_movie_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MainMovieCard(title: "Released In The Past Year"),
                MainMovieCard(title: "Trending Now"),

                NumberTitleCard(),

                MainMovieCard(title: "Tense Dreams"),
                MainMovieCard(title: "South Indian Cinema"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
