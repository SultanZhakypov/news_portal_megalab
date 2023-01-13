import '../../../home/data/models/home_postlist_model.dart';

class CommentEntity {
  final User user;
  final String text;
  final List<dynamic> child;

  CommentEntity({
    required this.user,
    required this.text,
    required this.child,
  });
}
