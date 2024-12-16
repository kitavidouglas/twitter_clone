class TweetModel {
  final String id;
  final String userId;
  final String content;
  final List<String> likes;
  final DateTime createdAt;

  TweetModel({
    required this.id,
    required this.userId,
    required this.content,
    required this.likes,
    required this.createdAt,
  });

  factory TweetModel.fromMap(Map<String, dynamic> map) {
    return TweetModel(
      id: map['\$id'],
      userId: map['userId'],
      content: map['content'],
      likes: List<String>.from(map['likes']),
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '\$id': id,
      'userId': userId,
      'content': content,
      'likes': likes,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
