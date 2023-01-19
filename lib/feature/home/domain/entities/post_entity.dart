import '../../../detail/data/models/comment_model.dart';
import '../../../detail/domain/entities/comment_entity.dart';

class PostEntity {
  final int id;
  final String tag;
  final String title;
  final String text;
  final String? image;
  final String shortDesc;
  final String author;
  final bool isLiked;
  final List<CommentModel> comment;

  const PostEntity({
    required this.id,
    required this.tag,
    required this.title,
    required this.text,
    required this.comment,
    this.image,
    required this.shortDesc,
    required this.author,
    required this.isLiked,
  });
}
