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
          text:
              "This is a very long comment. I don't known how many long it is but I think nobody can do better than me ! Please.. tell me I'm the best in the world otherwise I'll cry :(",
          user: User.mocked.first,
          date: DateTime.now().subtract(Duration(days: 2)),
        ),
        Comment(
          text:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et euismod tortor, sit amet varius nisi. Donec dolor tellus, imperdiet at quam ac, hendrerit interdum magna. Phasellus egestas posuere eros, et viverra neque porta non. Mauris a tincidunt nibh. Quisque ut purus dui. Nunc imperdiet, risus vel suscipit iaculis, justo arcu maximus turpis, et molestie massa est non elit. Donec tincidunt vehicula metus quis sagittis. Fusce metus nulla, auctor ac ex quis, dictum malesuada orci.",
          user: User.mocked.first,
          date: DateTime.now(),
        ),
        Comment(
          text:
              "Wow this post is just amazing, I'm so proud of you and your evolution on Discover !",
          user: User.mocked.first,
          date: DateTime.now(),
        ),
        Comment(
          text:
              "Wow this post is just amazing, I'm so proud of you and your evolution on Discover !",
          user: User.mocked.first,
          date: DateTime.now(),
        ),
        Comment(
          text:
              "Wow this post is just amazing, I'm so proud of you and your evolution on Discover !",
          user: User.mocked.first,
          date: DateTime.now(),
        ),
        Comment(
          text:
              "Wow this post is just amazing, I'm so proud of you and your evolution on Discover !",
          user: User.mocked.first,
          date: DateTime.now(),
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
    ),
    Post(
      id: 1,
      description:
          "Yay this is the description of my first post haha, I hope you guys liked it ! 😇",
      image:
          "https://ec.europa.eu/jrc/sites/jrcsh/files/styles/normal-responsive/public/fotolia-92027264european-day-forest-green-forest.jpg",
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
    ),
    Post(
      id: 2,
      description:
          "Yay this is the description of my first post haha, I hope you guys liked it ! 😇",
      image: "https://uiaa-web.azureedge.net/wp-content/uploads/2017/11/RTM19-banner-web.jpg",
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
    ),
    Post(
      id: 3,
      description:
          "Yay this is the description of my first post haha, I hope you guys liked it ! 😇",
      image: "https://www.conservation-nature.fr/wp-content/uploads/2020/10/desert.jpg",
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
    ),
  ];
}
