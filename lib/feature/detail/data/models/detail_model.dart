import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/detail/data/models/comment_model.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/detail_entity.dart';

part 'detail_model.freezed.dart';
part 'detail_model.g.dart';

@freezed
class DetailModel with _$DetailModel implements DetailEntity {
  const factory DetailModel({
    @Default(1) int id,
    @Default('') String tag,
    @Default('') String title,
    @Default('') String text,
    @Default('') String image,
    @JsonKey(name: 'short_desc') @Default('') String shortDesc,
    @Default('') String author,
    @JsonKey(name: 'is_liked') @Default(false) bool isLiked,
    @Default([]) List<CommentModel> comment,
  }) = _DetailModel;
  factory DetailModel.fromJson(Map<String, dynamic> json) =>
      _$DetailModelFromJson(json);
}
