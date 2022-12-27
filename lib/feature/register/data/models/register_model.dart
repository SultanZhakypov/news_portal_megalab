import 'package:json_annotation/json_annotation.dart';
import 'package:news_portal_megalab/feature/register/domain/entities/register_entity.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel extends RegisterEntity {
  @override
  @JsonKey(name: 'last_name')
  String get lastName => super.lastName;
  @override
  @JsonKey(name: 'profile_image')
  String? get imageProfile => super.imageProfile;
  const RegisterModel({
    required super.nickname,
    required super.name,
    required super.lastName,
    required super.imageProfile,
    required super.password,
    required super.password2,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
