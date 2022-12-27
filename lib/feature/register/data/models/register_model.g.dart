// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      nickname: json['nickname'] as String,
      name: json['name'] as String,
      lastName: json['last_name'] as String,
      imageProfile: json['profile_image'] as String?,
      password: json['password'] as String,
      password2: json['password2'] as String,
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'name': instance.name,
      'password': instance.password,
      'password2': instance.password2,
      'last_name': instance.lastName,
      'profile_image': instance.imageProfile,
    };
