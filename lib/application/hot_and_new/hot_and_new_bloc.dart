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
      emit(
        state.copyWith(
          comingSoonList: state.comingSoonList,
          isLoading: true,
          hasError: false,
          everyOneWatchingList: state.everyOneWatchingList,
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

        (moviesList) {
          emit(
            state.copyWith(
              isLoading: false,
              hasError: false,
              comingSoonList: moviesList.results,
              everyOneWatchingList: state.everyOneWatchingList,
            ),
          );
        },
      );
    });

    // on<LoadDataInEveryOneWatching>((event, emit) {});

    on<LoadDataInEveryOneWatching>((event, emit) async {
      emit(
        state.copyWith(
          comingSoonList: state.comingSoonList,
          isLoading: true,
          hasError: false,
          everyOneWatchingList: state.everyOneWatchingList,
        ),
      );

      // get data from remote
      final result = await _hotAndNewService.getHotAndTvData();

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

        (moviesList) {
          emit(
            state.copyWith(
              isLoading: false,
              hasError: false,
              comingSoonList: state.comingSoonList,
              everyOneWatchingList: moviesList.results,
            ),
          );
        },
      );
    });
  }
}
