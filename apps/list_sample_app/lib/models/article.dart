import 'package:list_app/models/user.dart';

class Article {
  // コンストラクタ
  Article({
    required this.title,
    required this.user,
    this.likesCount = 0, // デフォルト値を0で設定
    this.tags = const [], // デフォルト値を空配列で設定
    required this.createdAt,
    required this.url,
  });

  // プロパティ
  final String title;
  final User user;
  final int likesCount;
  final List<String> tags;
  final DateTime createdAt;
  final String url;

  factory Article.fromJson(dynamic json) {
    return Article(
        title: json['title'] as String,
        user: User.fromJson(json['user']),
        url: json['url'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
        likesCount: json['likes_count'] as int,
        tags: List<String>.from(json['tags'].map((tag) => tag['name'])));
  }
}
