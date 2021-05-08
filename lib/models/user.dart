class User {
  final int id;

  final String firstname;

  final String lastname;

  final String description;

  final String image;

  User(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.description,
      required this.image});

  String get fullName => firstname + " " + lastname;

  static final mocked = [
    User(
      id: 0,
      firstname: "Michael",
      lastname: "Bruno",
      description: "Traveler, life laver",
      image:
          "https://mpng.subpng.com/20180326/wzw/kisspng-computer-icons-user-profile-avatar-female-profile-5ab915f791e2c1.8067312315220792235976.jpg",
    )
  ];
}
