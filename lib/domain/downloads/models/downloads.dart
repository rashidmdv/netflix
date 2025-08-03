// import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
abstract class Downloads with _$Downloads {
  const factory Downloads({
    @JsonKey(name: "poster_path") String? posterPath,
    // @JsonKey(name: "title")
    String? title,
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
