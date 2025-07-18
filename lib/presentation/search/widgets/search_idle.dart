import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_title_widget.dart';

const imageURL =
    'https://media.themoviedb.org/t/p/w500_and_h282_face/zOpe0eHsq0A2NvNyBbtT6sj53qV.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleWidget(searchTitle: "Top Searches"),
        kHeight,

        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => TopSearchCard(),
            separatorBuilder: (ctx, index) => kHeight20,
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class TopSearchCard extends StatelessWidget {
  const TopSearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageURL),
              fit: BoxFit.fill,
            ),
          ),
        ),
        kWidth,
        Expanded(
          child: Text(
            "Movie Name",
            style: TextStyle(
              fontSize: 17,
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        kWidth,
        Icon(CupertinoIcons.play_circle, color: kWhiteColor, size: 40),
        kWidth,
      ],
    );
  }
}
