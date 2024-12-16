class UserModel {
  final String id;
  final String username;
  final String email;
  final String profileImage;

  UserModel({required this.id, required this.username, required this.email, required this.profileImage});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['\$id'],
      username: map['username'],
      email: map['email'],
      profileImage: map['profileImage'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '\$id': id,
      'username': username,
      'email': email,
      'profileImage': profileImage,
    };
  }
}
