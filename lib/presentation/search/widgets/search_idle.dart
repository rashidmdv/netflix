import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/core/api_urls.dart';
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
        const SearchTitleWidget(searchTitle: "Top Searches"),
        kHeight,

        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.isError) {
                return const Center(child: Text("error is gotten"));
              } else if (state.idleData.isEmpty) {
                return const Center(child: Text("error is gotten"));
              } else {
                return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) => TopSearchCard(
                    movieTitle:
                        state.idleData[index].title ?? "No title available",
                    movieImage: state.idleData[index].posterPath ?? "",
                  ),
                  separatorBuilder: (ctx, index) => kHeight20,
                  itemCount: state.idleData.length,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchCard extends StatelessWidget {
  final String movieTitle;
  final String movieImage;

  const TopSearchCard({
    super.key,
    required this.movieTitle,
    required this.movieImage,
  });

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
              image: NetworkImage(ApiUrls.kImageUrl + movieImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
        kWidth,
        Expanded(
          child: Text(
            movieTitle,
            style: const TextStyle(
              fontSize: 17,
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        kWidth,
        const Icon(CupertinoIcons.play_circle, color: kWhiteColor, size: 40),
        kWidth,
      ],
    );
  }
}
