import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/profile/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel implements UserEntity {
  const factory UserModel({
    @Default(1) int id,
    @Default('') String name,
    @Default('') String nickname,
    @JsonKey(name: 'last_name') @Default('') String lastName,
    @Default('') String? image,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
