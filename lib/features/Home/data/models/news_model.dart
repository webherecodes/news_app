import 'package:newsapp/features/Home/domain/entities/news_entity.dart';

class NewsModel extends NewsEntity {
  NewsModel({
    int? id,
    String? user_id,
    String? headline,
    String? news_content,
    String? file,
    String? file_type,
    String? created_at,
  });

  factory NewsModel.fromJson(Map<String, dynamic> map) {
    return NewsModel(
      id: map['id'] ?? "",
      user_id: map['user_id'] ?? "",
      headline: map['headline'] ?? "",
      news_content: map['news_content'] ?? "",
      file: map['file'] ?? "",
      file_type: map['file_type'] ?? "",
      created_at: map['created_at'] ?? "",
    );
  }
}
