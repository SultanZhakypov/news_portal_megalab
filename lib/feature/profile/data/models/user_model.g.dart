// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int? ?? 1,
      name: json['name'] as String? ?? '',
      nickname: json['nickname'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      image: json['profile_image'] as String? ?? null,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nickname': instance.nickname,
      'last_name': instance.lastName,
      'profile_image': instance.image,
    };
