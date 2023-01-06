import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/register/domain/entities/register_entity.dart';

part 'register_model.g.dart';
part 'register_model.freezed.dart';

@freezed
class RegisterModel with _$RegisterModel implements RegisterEntity {
  const factory RegisterModel({
    required String nickname,
    required String name,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'profile_image') String? imageProfile,
    required String password,
    required String password2,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}
