import '../../data/models/home_postlist_model.dart';

class HomeEntity {
  final int id;
  final String tag;
  final String title;
  final String text;
  final String? image;
  final String shortDesc;
  final String author;
  final bool isLiked;
  final List<Comment> comment;

  const HomeEntity({
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
