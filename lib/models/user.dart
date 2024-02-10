class User {
  final String username;
  final String name;
  final String email;
  final String profileImage;

  User({
    required this.username,
    required this.name,
    required this.email,
    required this.profileImage,
  });
}

final List<User> users = [
  User(
    username: "john_doesss",
    name: "John Doe",
    email: "john.doe@example.com",
    profileImage: "assets/images/five.jpg",
  ),
];
