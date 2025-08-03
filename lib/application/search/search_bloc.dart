import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/main_failuers/main_failures.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:netflix/domain/search/model/search_response/search_response.dart';
import 'package:netflix/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@Injectable()
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;

  SearchBloc(this._downloadsService, this._searchService)
    : super(SearchState.initial()) {
    // idle state that means first screen when open search page open

    on<_Initialize>((event, emit) async {
      // emit state
      if (state.idleData.isNotEmpty) {
        emit(
          SearchState(
            searchResultData: [],
            idleData: state.idleData,
            isLoading: false,
            isError: false,
          ),
        );
        return;
      }

      emit(
        const SearchState(
          searchResultData: [],
          idleData: [],
          isLoading: true,
          isError: false,
        ),
      );
      //get trending
      final result = await _downloadsService.getDownloadsImages();

      result.fold(
        (MainFailures f) {
          emit(
            const SearchState(
              searchResultData: [],
              idleData: [],
              isLoading: false,
              isError: true,
            ),
          );
        },
        (List<Downloads> list) => {
          emit(
            SearchState(
              searchResultData: [],
              idleData: list,
              isLoading: false,
              isError: false,
            ),
          ),
        },
      );

      // show to ui
    });

    // search result
    on<_SearchMovie>((event, emit) {
      // call search movies api
      _searchService.searchMovies(movieQuery: event.movieQuery);

      // show to ui
    });
  }
}
