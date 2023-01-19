import '../../../home/data/models/home_postlist_model.dart';

class Comment {
  final User user;
  final String text;
  final List<dynamic> child;

  Comment({
    required this.user,
    required this.text,
    required this.child,
  });
}
