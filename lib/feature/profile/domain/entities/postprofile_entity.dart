import '../../../detail/domain/entities/comment_entity.dart';

class PostProfileEntity {
  final int id;
  final String tag;
  final String title;
  final String text;
  final String? image;
  final bool isLiked;
  final List<Comment> comment;

  const PostProfileEntity({
    required this.id,
    required this.tag,
    required this.title,
    required this.text,
    required this.comment,
    this.image,
    required this.isLiked,
  });
}
