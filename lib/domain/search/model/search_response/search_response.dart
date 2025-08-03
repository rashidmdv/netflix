import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  // int? page;
  @JsonKey(name: 'results')
  List<SearchResultData> results;
  // @JsonKey(name: 'total_pages')
  // int? totalPages;
  // @JsonKey(name: 'total_results')
  // int? totalResults;

  SearchResponse({this.results = const []});

  factory SearchResponse.fromJson(Map<String, dynamic> json) {
    return _$SearchResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}

@JsonSerializable()
class SearchResultData {
  // bool? adult;
  // @JsonKey(name: 'backdrop_path')
  // String? backdropPath;
  // @JsonKey(name: 'genre_ids')
  // List<int>? genreIds;
  @JsonKey(name: 'id')
  int? id;
  // @JsonKey(name: 'original_language')
  // String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  // String? overview;
  // double? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  // @JsonKey(name: 'release_date')
  // String? releaseDate;
  // String? title;
  // bool? video;
  // @JsonKey(name: 'vote_average')
  // double? voteAverage;
  // @JsonKey(name: 'vote_count')
  // int? voteCount;

  SearchResultData({
    // this.adult,
    // this.backdropPath,
    // this.genreIds,
    this.id,
    // this.originalLanguage,
    this.originalTitle,
    // this.overview,
    // this.popularity,
    this.posterPath,
    // this.releaseDate,
    // this.title,
    // this.video,
    // this.voteAverage,
    // this.voteCount,
  });

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}
