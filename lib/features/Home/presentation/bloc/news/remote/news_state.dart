import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'package:newsapp/features/Home/domain/entities/news_entity.dart';

abstract class NewsState extends Equatable {
  final List<NewsEntity>? news;
  final DioException? error;
  const NewsState({
    this.news,
    this.error,
  });

  @override
  List<Object?> get props => [news, error];
}

class NewsLoading extends NewsState {
  const NewsLoading();
}

class NewsLoaded extends NewsState {
  const NewsLoaded(List<NewsEntity> newss) : super(news: newss);
}

class NewsError extends NewsState {
  const NewsError(DioException error) : super(error: error);
}
