import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:news_portal_megalab/feature/home/domain/entities/home_entity.dart';

part 'home_postlist_model.freezed.dart';
part 'home_postlist_model.g.dart';

@freezed
class PostListModel with _$PostListModel implements HomeEntity {
  const factory PostListModel({
    required int id,
    required String tag,
    required String title,
    required String text,
    required String image,
    @JsonKey(name: 'short_desc') required String shortDesc,
    required String author,
    @JsonKey(name: 'is_liked') required bool isLiked,
    required List<Comment> comment,
  }) = _PostListModel;
  factory PostListModel.fromJson(Map<String, dynamic> json) =>
      _$PostListModelFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    required int id,
    required String user,
    required List child,
    required String text,
  }) = _Comment;
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    @JsonKey(name: 'last_name') required String lastName,
    required String nickname,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
