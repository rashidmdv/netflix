import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/main_failuers/main_failures.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@Injectable()
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;

  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImages>((event, emit) async {
      emit(state.copyWith(isLoading: true, downloadsFailureOrSuccess: none()));
      final Either<MainFailures, List<Downloads>> downloadsOptions =
          await _downloadsRepo.getDownloadsImages();

      print(downloadsOptions.toString());
      emit(
        downloadsOptions.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadsFailureOrSuccess: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downloadsFailureOrSuccess: Some(Right(success)),
          ),
        ),
      );
    });
  }
}
