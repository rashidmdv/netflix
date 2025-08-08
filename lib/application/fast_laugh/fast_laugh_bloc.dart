import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

ValueNotifier<Set<int>> likedVideosIdsNotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(IDownloadsRepo _downloadService)
    : super(FastLaughState.initial()) {
    on<_Initial>((event, emit) async {
      emit(
        const FastLaughState(videosList: [], isLoading: true, isError: false),
      );
      // get trending movies
      final result = await _downloadService.getDownloadsImages();

      final _state = result.fold(
        (error) => const FastLaughState(
          videosList: [],
          isLoading: false,
          isError: true,
        ),

        (success) => FastLaughState(
          videosList: success,
          isLoading: false,
          isError: false,
        ),
      );

      emit(_state);

      // send to ui
    });

    // on<LikedVideos>((event, emit) async {
    //   likedVideosIdsNotifier.value.add(event.id);
    //   print("li cliced  ${event.id}");
    //   // state.likedVideosIds.add(event.id);
    //   // emit(state.copyWith(likedVideosIds: state.likedVideosIds));
    // });

    // on<UnLikedVideos>((event, emit) async {
    //   likedVideosIdsNotifier.value.remove(event.id);
    //   print("un cliced  ${event.id}");
    //   // state.likedVideosIds.remove(event.id);
    //   // emit(state.copyWith(likedVideosIds: state.likedVideosIds));
    // });
  }
}
