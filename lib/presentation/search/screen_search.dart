import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result_widget.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final Debouncer _debouncer = Debouncer();

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    BlocProvider.of<SearchBloc>(context).add(const SearchEvent.initialize());
    // });

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
              onChanged: (value) {
                // BlocProvider.of<SearchBloc>(
                //   context,
                // ).add(SearchEvent.searchMovie(movieQuery: value));

                if (value.isEmpty) {
                  return;
                }
                _debouncer.debounce(
                  duration: const Duration(milliseconds: 500),
                  onDebounce: () {
                    print(value);
                    BlocProvider.of<SearchBloc>(
                      context,
                    ).add(SearchEvent.searchMovie(movieQuery: value));
                  },
                );
              },
            ),
            kHeight,
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResultData.isEmpty) {
                  return const Expanded(child: SearchIdleWidget());
                } else {
                  return const Expanded(child: SearchResultWidget());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
