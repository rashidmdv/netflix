import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failuers/main_failures.dart';
import 'package:netflix/domain/search/model/search_response/search_response.dart';

abstract class SearchService {
  Future<Either<MainFailures,SearchResponse>> searchMovies({
    required String movieQuery,
  });
}