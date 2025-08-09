import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/every_ones_watching_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'New & Hot',
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cast),
              color: kWhiteColor,
            ),
            kWidth,
            Container(color: kBlueColor, width: 30, height: 30),
            kWidth,
          ],
          bottom: TabBar(
            labelColor: kBlackColor,
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            unselectedLabelColor: kGrayColor,
            isScrollable: true,
            indicatorWeight: 1,
            dividerHeight: 0,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: kWhiteColor,
            ),
            indicatorAnimation: TabIndicatorAnimation.linear,
            tabs: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Tab(text: "🍿 Coming Soon"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Tab(text: "🍿 Everyone Watching"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ComingSoonList(key: Key("coming soon")),
            EveryOnesWatchingList(),
          ],
        ),
      ),
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(
        context,
      ).add(const HotAndNewEvent.loadDataInComingSoon());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.hasError) {
          return const Center(child: Text("Error"));
        } else if (state.comingSoonList.isEmpty) {
          return const Center(child: Text("No Data"));
        } else {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.comingSoonList.length,
            itemBuilder: (context, index) {
              final movie = state.comingSoonList[index];

              if (movie.id == null) {
                return const SizedBox();
              }

              final _date = DateTime.parse(movie.releaseDate!);
              final formattedDate = DateFormat.yMMMMd('en_US').format(_date);
              return ComingSoonWidget(
                id: movie.id.toString(),
                month: formattedDate
                    .split(" ")
                    .first
                    .substring(0, 3)
                    .toUpperCase(),
                day: movie.releaseDate!.split("-")[1],
                posterPath: "${imagePathURL}${movie.posterPath}",
                movieName: movie.originalTitle.toString(),
                description: movie.overview.toString(),
              );
            },
          );
        }
      },
    );
  }
}

class EveryOnesWatchingList extends StatelessWidget {
  const EveryOnesWatchingList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(
        context,
      ).add(const HotAndNewEvent.loadDataInEveryOneWatching());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotAndNewBloc>(
          context,
        ).add(const HotAndNewEvent.loadDataInEveryOneWatching());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.hasError) {
            return const Center(child: Text("Error"));
          } else if (state.everyOneWatchingList.isEmpty) {
            return const Center(child: Text("No Data"));
          } else {
            return ListView.builder(
              itemCount: state.everyOneWatchingList.length,
              itemBuilder: (context, index) {
                final movie = state.everyOneWatchingList[index];
                return EveryOnesWatchingWidget(
                  posterPath: "$imagePathURL${movie.posterPath}",
                  movieName: movie.originalName ?? "No Data",
                  description: movie.overview ?? "No Data",
                );
              },
            );
          }
        },
      ),
    );
  }
}
