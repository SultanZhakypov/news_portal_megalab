// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailModel _$$_DetailModelFromJson(Map<String, dynamic> json) =>
    _$_DetailModel(
      id: json['id'] as int? ?? 1,
      tag: json['tag'] as String? ?? '',
      title: json['title'] as String? ?? '',
      text: json['text'] as String? ?? '',
      image: json['image'] as String? ?? '',
      shortDesc: json['short_desc'] as String? ?? '',
      author: json['author'] as String? ?? '',
      isLiked: json['is_liked'] as bool? ?? false,
      comment: (json['comment'] as List<dynamic>?)
              ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DetailModelToJson(_$_DetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tag': instance.tag,
      'title': instance.title,
      'text': instance.text,
      'image': instance.image,
      'short_desc': instance.shortDesc,
      'author': instance.author,
      'is_liked': instance.isLiked,
      'comment': instance.comment,
    };
