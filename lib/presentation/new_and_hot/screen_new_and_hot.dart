import 'package:flutter/material.dart';
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
          title: Text(
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
            tabs: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Tab(text: "🍿 Coming Soon"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Tab(text: "🍿 Everyone Watching"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(context),
            _buildEveryOnesWatching(context),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon(context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return ComingSoonWidget();
      },
    );
  }

  Widget _buildEveryOnesWatching(context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return EveryOnesWatchingWidget();
      },
    );
  }
}
