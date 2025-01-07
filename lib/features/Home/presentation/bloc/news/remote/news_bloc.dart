import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/core/resources/data_state.dart';
import 'package:newsapp/features/Home/domain/usecases/get_news.dart';
import 'package:newsapp/features/Home/presentation/bloc/news/remote/news_event.dart';
import 'package:newsapp/features/Home/presentation/bloc/news/remote/news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNewsUseCase _getNewsUseCase;

  NewsBloc(this._getNewsUseCase) : super(const NewsLoading()) {
    on<GetNews>(onGetNews);
  }

  void onGetNews(GetNews event, Emitter<NewsState> emit) async {
    final dataState = await _getNewsUseCase();
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(NewsLoaded(dataState.data!));
    }
    if (dataState is DataFailed) {
      print(dataState.error!.message);
      emit(NewsError(dataState.error!));
    }
  }
}
