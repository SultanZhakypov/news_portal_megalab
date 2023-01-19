// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_postlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostListModel _$$_PostListModelFromJson(Map<String, dynamic> json) =>
    _$_PostListModel(
      id: json['id'] as int? ?? 0,
      tag: json['tag'] as String? ?? '',
      title: json['title'] as String? ?? '',
      text: json['text'] as String? ?? '',
      image: json['image'] as String? ?? '',
      shortDesc: json['short_desc'] as String? ?? '',
      author: json['author'] as String? ?? '',
      isLiked: json['is_liked'] as bool? ?? false,
      comment: (json['comment'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PostListModelToJson(_$_PostListModel instance) =>
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

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      nickname: json['nickname'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'last_name': instance.lastName,
      'nickname': instance.nickname,
    };
