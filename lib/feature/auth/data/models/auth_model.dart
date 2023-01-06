import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/auth/domain/entities/auth_entity.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel implements AuthEntity {
  const factory AuthModel({
    required String nickname,
    required String password,
  }) = _AuthModel;
  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
