import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';
import 'package:news_portal_megalab/feature/home/data/models/home_postlist_model.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel implements Comment {
  const factory CommentModel({
    @Default(0) int id,
    @Default(User()) User user,
    @Default('') String text,
    @Default([]) List child,
  }) = _CommentModel;
  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
