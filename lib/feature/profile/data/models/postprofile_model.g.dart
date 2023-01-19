// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postprofile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostProfileModel _$$_PostProfileModelFromJson(Map<String, dynamic> json) =>
    _$_PostProfileModel(
      id: json['id'] as int? ?? 1,
      tag: json['tag'] as String? ?? '',
      title: json['title'] as String? ?? '',
      text: json['text'] as String? ?? '',
      image: json['image'] as String? ?? '',
      isLiked: json['is_liked'] as bool? ?? false,
      comment: (json['comment'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PostProfileModelToJson(_$_PostProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tag': instance.tag,
      'title': instance.title,
      'text': instance.text,
      'image': instance.image,
      'is_liked': instance.isLiked,
      'comment': instance.comment,
    };
