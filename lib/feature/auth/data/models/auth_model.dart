import 'package:json_annotation/json_annotation.dart';
import 'package:news_portal_megalab/feature/auth/domain/entities/auth_entity.dart';

part 'auth_model.g.dart';

@JsonSerializable()
class AuthModel extends AuthEntity {
  const AuthModel({
    required super.nickname,
    required super.password,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);
}
