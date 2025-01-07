import 'package:dio/dio.dart';
import 'package:newsapp/core/constants/constants.dart';
import 'package:newsapp/features/Home/data/models/news_model.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/news')
  Future<HttpResponse<List<NewsModel>>> getNews();
}
