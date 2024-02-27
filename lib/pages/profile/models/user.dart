class User {
  const User({
    required this.name,
    required this.username,
    required this.avatar,
    required this.bio,
    required this.numberOfFollowers,
    required this.numberOfPosts,
    required this.numberOfFollowing,
    required this.email,
    required this.phone,
    required this.gender,
    this.website,
  });
  final String name;

  final String username;

  final String? website;

  final String email;

  final String avatar;

  final String phone;

  final String gender;

  final String bio;

  final int numberOfPosts;

  final int numberOfFollowers;

  final int numberOfFollowing;
}
