import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:newsapp/features/Home/data/data_source/remote/news_api_service.dart';
import 'package:newsapp/features/Home/data/repository/news_repo_impl.dart';
import 'package:newsapp/features/Home/domain/repository/news_repository.dart';
import 'package:newsapp/features/Home/domain/usecases/get_news.dart';
import 'package:newsapp/features/Home/presentation/bloc/news/remote/news_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
  sl.registerSingleton<NewsRepository>(NewsRepoImpl(sl()));
  sl.registerSingleton<GetNewsUseCase>(GetNewsUseCase(sl()));
  sl.registerFactory<NewsBloc>(() => NewsBloc(sl()));
}
