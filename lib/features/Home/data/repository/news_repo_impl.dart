import 'dart:io';

import 'package:dio/dio.dart';
import 'package:newsapp/core/resources/data_state.dart';
import 'package:newsapp/features/Home/data/data_source/remote/news_api_service.dart';
import 'package:newsapp/features/Home/data/models/news_model.dart';
import 'package:newsapp/features/Home/domain/repository/news_repository.dart';

class NewsRepoImpl implements NewsRepository {
  final NewsApiService _newsApiService;
  NewsRepoImpl(this._newsApiService);
  @override
  Future<DataState<List<NewsModel>>> getNews() async {
    try {
      final httpResponse = await _newsApiService.getNews();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
          error: httpResponse.response.statusMessage,
          type: DioExceptionType.badResponse,
        ));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
