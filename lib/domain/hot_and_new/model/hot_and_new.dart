import 'package:json_annotation/json_annotation.dart';

part 'hot_and_new.g.dart';

@JsonSerializable()
class HotAndNew {
  int? page;
  List<HotAndNewData> results;

  HotAndNew({this.page, this.results = const []});

  factory HotAndNew.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewToJson(this);
}

@JsonSerializable()
class HotAndNewData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;

  // this is for tv series, this is use instead of original_title
  @JsonKey(name: 'original_name')
  String? originalName;

  String? overview;
  double? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  String? title;

  HotAndNewData({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory HotAndNewData.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewDataToJson(this);
}
