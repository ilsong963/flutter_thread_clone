import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'feed_model.g.dart';

@freezed
class FeedModel with _$FeedModel {
  const factory FeedModel({
    required int profileColor,
    required String nickName,
    required List<String> image,
    required String description,
    required int likeCount,
    required int commentCount,
    required int shareCount,
    required DateTime date,
  }) = _FeedModel;

  factory FeedModel.fromJson(Map<String, dynamic> json) =>
      _$FeedModelFromJson(json);
}
