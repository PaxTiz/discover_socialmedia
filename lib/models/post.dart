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
  });

  static final mocked = [
    Post(
      id: 0,
      description:
          "Yay this is the description of my first post haha, I hope you guys liked it ! 😇",
      image:
          "https://www.mer-ocean.com/wp-content/uploads/2018/08/shifaaz-shamoon-370863-unsplash-e1533303603417-1024x576.jpg",
      liked: false,
      likes: 247,
      commented: false,
      reposted: false,
      reposts: 33,
      comments: [
        Comment(text: "Yay my first comment :)", user: User.mocked.first),
      ],
      user: User.mocked.first,
    )
  ];
}
