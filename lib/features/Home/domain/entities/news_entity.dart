import 'package:equatable/equatable.dart';

class NewsEntity extends Equatable {
  final int? id;
  final String? user_id;
  final String? headline;
  final String? news_content;
  final String? file;
  final String? file_type;
  final String? created_at;
  NewsEntity({
    this.id,
    this.user_id,
    this.headline,
    this.news_content,
    this.file,
    this.file_type,
    this.created_at,
  });
  
  @override
  // TODO: implement props
  List<Object?> get props {
    return[
      id,user_id,headline,news_content,file,file_type,created_at
    ];
  }
}
