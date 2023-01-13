import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/profile/domain/entities/postprofile_entity.dart';

import '../../../home/data/models/home_postlist_model.dart';

part 'postprofile_model.freezed.dart';
part 'postprofile_model.g.dart';

@freezed
class PostProfileModel with _$PostProfileModel implements PostProfileEntity {
  const factory PostProfileModel({
    @Default(1) int id,
    @Default('') String tag,
    @Default('') String title,
    @Default('') String text,
    @Default('') String? image,
    @JsonKey(name: 'is_liked') @Default(false) bool isLiked,
    @Default([]) List<Comment> comment,
  }) = _PostProfileModel;
  factory PostProfileModel.fromJson(Map<String, dynamic> json) =>
      _$PostProfileModelFromJson(json);
}
