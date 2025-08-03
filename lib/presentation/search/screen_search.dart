import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result_widget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const SearchEvent.initialize());
    });

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              placeholder: 'Search',
              prefixIcon: const Icon(CupertinoIcons.search, color: kGrayColor),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: kGrayColor,
              ),
              style: const TextStyle(color: kWhiteColor),
              backgroundColor: kGrayColor.withAlpha(80),
              // decoration: BoxDecoration(color: ),
            ),
            kHeight,
            Expanded(child: SearchIdleWidget()),
            // const Expanded(child: SearchResultWidget()),
          ],
        ),
      ),
    );
  }
}
