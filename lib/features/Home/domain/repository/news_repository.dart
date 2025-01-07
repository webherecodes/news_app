import 'package:newsapp/core/resources/data_state.dart';
import 'package:newsapp/features/Home/domain/entities/news_entity.dart';

abstract class NewsRepository {
  Future<DataState<List<NewsEntity>>> getNews();
}