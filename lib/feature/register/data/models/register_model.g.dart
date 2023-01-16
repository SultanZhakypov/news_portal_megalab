// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterModel _$$_RegisterModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterModel(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      name: json['name'] as String,
      lastName: json['last_name'] as String,
      imageProfile: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$_RegisterModelToJson(_$_RegisterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'name': instance.name,
      'last_name': instance.lastName,
      'profile_image': instance.imageProfile,
    };
