import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/detail/data/models/comment_model.dart';
import 'package:news_portal_megalab/feature/profile/domain/entities/postprofile_entity.dart';

import '../../../detail/domain/entities/comment_entity.dart';

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
    @Default([]) List<CommentModel> comment,
  }) = _PostProfileModel;
  factory PostProfileModel.fromJson(Map<String, dynamic> json) =>
      _$PostProfileModelFromJson(json);
}
