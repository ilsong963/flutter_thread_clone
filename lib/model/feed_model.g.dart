// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedModelImpl _$$FeedModelImplFromJson(Map<String, dynamic> json) =>
    _$FeedModelImpl(
      profileColor: (json['profileColor'] as num).toInt(),
      nickName: json['nickName'] as String,
      image: (json['image'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      likeCount: (json['likeCount'] as num).toInt(),
      commentCount: (json['commentCount'] as num).toInt(),
      shareCount: (json['shareCount'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$FeedModelImplToJson(_$FeedModelImpl instance) =>
    <String, dynamic>{
      'profileColor': instance.profileColor,
      'nickName': instance.nickName,
      'image': instance.image,
      'description': instance.description,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'shareCount': instance.shareCount,
      'date': instance.date.toIso8601String(),
    };
