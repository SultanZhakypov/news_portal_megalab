// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentModel _$$_CommentModelFromJson(Map<String, dynamic> json) =>
    _$_CommentModel(
      id: json['id'] as int? ?? 0,
      user: json['user'] == null
          ? const User()
          : User.fromJson(json['user'] as Map<String, dynamic>),
      text: json['text'] as String? ?? '',
      child: (json['child'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'text': instance.text,
      'child': instance.child,
    };
