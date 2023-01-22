import '../../../home/data/models/home_postlist_model.dart';

class Comment {
  final int id;
  final User user;
  final String text;
  final List<Comment>child;

  Comment({
    required this.id,
    required this.user,
    required this.text,
    required this.child,
  });
}
