import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

final List imageList = [
  'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/4q2NNj4S5dG2RLF9CpXsej7yXl.jpg',
  'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/7bcndiaTgu1Kj5a6qyCmsWYdtI.jpg',
  'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/6vFL8S6Cci8s7SHWXz60xOisGBC.jpg',
];

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    const _SmartDownloadsWidget(),
    MiddleScreenWidget(),
    SizedBox(height: 30),
    BottomScreenWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(appBarTitle: "Downloads"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(15),
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => const SizedBox(height: 25),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class MiddleScreenWidget extends StatelessWidget {
  const MiddleScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // this call at a time when app open
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(
        context,
      ).add(const DownloadsEvent.getDownloadsImages());
    });

    // this call every time when that screen open
    // BlocProvider.of<DownloadsBloc>(
    //   context,
    // ).add(const DownloadsEvent.getDownloadsImages());

    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: kWhiteColor,
          ),
        ),
        kHeight,
        const Text(
          "We will download a personalised selection of \n movies and shows for you, so there is \n always something to watch on your device",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w900,
            color: kGrayColor,
          ),
        ),
        kHeight,
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            final downloads = state.downloads;

            // Show message if not enough images
            if (downloads.length < 3) {
              return const Center(
                child: Text(
                  'Not enough data to display downloads.',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }

            return SizedBox(
              height: screenSize.width * 0.8,
              width: screenSize.width,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: screenSize.width * 0.35,
                          backgroundColor: kGrayColor.shade800,
                        ),
                        DownloadsImageWidget(
                          image:
                              '$imagePathURL${state.downloads[0].posterPath}',
                          margin: const EdgeInsets.only(left: 200),
                          rotation: 15,
                          screenSize: Size(
                            screenSize.width * 0.35,
                            screenSize.width * 0.50,
                          ),
                        ),
                        DownloadsImageWidget(
                          image:
                              '$imagePathURL${state.downloads[2].posterPath}',
                          margin: const EdgeInsets.only(right: 200),
                          rotation: -15,
                          screenSize: Size(
                            screenSize.width * 0.35,
                            screenSize.width * 0.50,
                          ),
                        ),
                        DownloadsImageWidget(
                          image:
                              '$imagePathURL${state.downloads[3].posterPath}',
                          margin: const EdgeInsets.only(left: 0),
                          screenSize: Size(
                            screenSize.width * 0.4,
                            screenSize.width * 0.52,
                          ),
                        ),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}

class BottomScreenWidget extends StatelessWidget {
  const BottomScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          minWidth: double.infinity,
          onPressed: () {},
          color: kBlueButtonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Set up",
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          onPressed: () {},
          color: kWhiteButtonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "See What You Can Download",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloadsWidget extends StatelessWidget {
  const _SmartDownloadsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Icon(Icons.settings, color: kWhiteColor),
        Text(
          "Smart Downloads",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.image,
    this.rotation = 0,
    required this.margin,
    required this.screenSize,
  });

  // final Size screenSize;
  final String image;
  final double rotation;
  final EdgeInsets margin;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation * pi / 180,
      child: Container(
        margin: margin,
        width: screenSize.width,
        height: screenSize.height,
        // color: kBlackColor,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
