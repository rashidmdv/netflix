import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';

import 'package:netflix/presentation/widgets/main_movie_card.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (ctx, newDirection, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;

                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: [
                      BackgroundCard(),

                      MainMovieCard(title: "Released In The Past Year"),
                      MainMovieCard(title: "Trending Now"),

                      NumberTitleCard(),

                      MainMovieCard(title: "Tense Dreams"),
                      MainMovieCard(title: "South Indian Cinema"),
                    ],
                  ),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                          duration: Duration(milliseconds: 1000),
                          height: 100,
                          width: double.infinity,
                          color: Colors.black.withAlpha(100),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    'https://cdn-images-1.medium.com/v2/resize:fit:1200/1*ty4NvNrGg4ReETxqU2N3Og.png',
                                    width: 70,
                                    height: 70,
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.cast),
                                    color: kWhiteColor,
                                  ),
                                  kWidth,
                                  Container(
                                    color: kBlueColor,
                                    width: 30,
                                    height: 30,
                                  ),
                                  kWidth,
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "TV Shows",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Movies",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Categories",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : kHeight,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
