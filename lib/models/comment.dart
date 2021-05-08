import 'user.dart';

class Comment {
  final String text;

  final User user;

  final DateTime date;

  Comment({required this.text, required this.user, required this.date});

  String get timeAgo {
    return "${date.day} / ${date.month} / ${date.year}";
  }
}
