import 'comment.dart';
import 'user.dart';

class Post {
  final int id;

  final String description;

  final String image;

  final bool liked;

  final int likes;

  final bool commented;

  final bool reposted;

  final int reposts;

  final List<Comment> comments;

  final User user;

  final DateTime date;

  Post({
    required this.id,
    required this.description,
    required this.image,
    required this.liked,
    required this.likes,
    required this.commented,
    required this.reposted,
    required this.reposts,
    required this.comments,
    required this.user,
    required this.date,
  });

  String get timeAgo {
    return "${date.day} / ${date.month} / ${date.year}";
  }

  static final mocked = [
    Post(
      id: 0,
      description:
          "Yay this is the description of my first post haha, I hope you guys liked it ! 😇",
      image:
          "https://cdn.futura-sciences.com/buildsv6/images/wide1920/b/a/e/bae8edbcb1_97484_eau-salee-mers-oceans.jpg",
      liked: false,
      likes: 247,
      commented: false,
      reposted: false,
      reposts: 33,
      comments: [
        Comment(
          text: "Yay my first comment :)",
          user: User.mocked.first,
          date: DateTime.now().subtract(Duration(days: 2)),
        ),
        Comment(
          text:
              "Wow this post is just amazing, I'm so proud of you and your evolution on Discover !",
          user: User.mocked.first,
          date: DateTime.now(),
        ),
      ],
      user: User.mocked.first,
      date: DateTime.now(),
    )
  ];
}
