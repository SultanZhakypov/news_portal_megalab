import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/detail/data/models/comment_model.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';

import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';

part 'home_postlist_model.freezed.dart';
part 'home_postlist_model.g.dart';

@freezed
class PostListModel with _$PostListModel implements PostEntity{
  const factory PostListModel({
    @Default(0) int id,
    @Default('') String tag,
    @Default('') String title,
    @Default('') String text,
    @Default('') String? image,
    @JsonKey(name: 'short_desc') @Default('') String shortDesc,
    @Default('') String author,
    @JsonKey(name: 'is_liked') @Default(false) bool isLiked,
   @Default([]) List<CommentModel> comment,
  }) = _PostListModel;
  factory PostListModel.fromJson(Map<String, dynamic> json) =>
      _$PostListModelFromJson(json);
}



@freezed
class User with _$User {
  const factory User({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'last_name') @Default('') String lastName,
    @Default('') String nickname,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
