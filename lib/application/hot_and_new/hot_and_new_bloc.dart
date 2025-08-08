import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/hot_and_new/hot_and_new_service.dart';
import 'package:netflix/domain/hot_and_new/model/hot_and_new.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewService _hotAndNewService;

  HotAndNewBloc(this._hotAndNewService) : super(HotAndNewState.initial()) {
    on<_LoadDataInComingSoon>((event, emit) async {
      // print("🔥 Event triggered");
      // send loading ui
      // state.copyWith(
      //   comingSoonList: [],
      //   isLoading: true,
      //   hasError: false,
      //   everyOneWatchingList: [],
      // );
      emit(
        state.copyWith(
          comingSoonList: [],
          isLoading: true,
          hasError: false,
          everyOneWatchingList: [],
        ),
      );

      // get data from remote
      final result = await _hotAndNewService.getHotAndMovieData();

      // data to state
      result.fold(
        (error) => emit(
          state.copyWith(
            comingSoonList: [],
            isLoading: false,
            hasError: true,
            everyOneWatchingList: [],
          ),
        ),
        // (success) => HotAndNewState(
        //   comingSoonList: success.results,
        //   everyOneWatchingList: state.everyOneWatchingList,
        //   isLoading: false,
        //   hasError: false,
        // ),
        (moviesList) {
          print("------");
          print(moviesList.results); // ✅ this is working
          print("------");

          emit(
            state.copyWith(
              isLoading: false,
              hasError: false,
              comingSoonList:
                  moviesList.results, // ✅ make sure you assign this!
            ),
          );
        },
      );
    });

    // on<LoadDataInEveryOneWatching>((event, emit) {});
  }
}
