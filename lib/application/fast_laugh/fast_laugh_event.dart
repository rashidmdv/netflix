part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughEvent with _$FastLaughEvent {
  const factory FastLaughEvent.initial() = _Initial;
  const factory FastLaughEvent.likedVideos({required int id}) = LikedVideos;
  const factory FastLaughEvent.unLikedVideos({required int id}) = UnLikedVideos;
}
