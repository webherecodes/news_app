import 'package:newsapp/core/resources/data_state.dart';
import 'package:newsapp/core/usecases/usecase.dart';
import 'package:newsapp/features/Home/domain/entities/news_entity.dart';
import 'package:newsapp/features/Home/domain/repository/news_repository.dart';

class GetNewsUseCase implements UseCase<DataState<List<NewsEntity>>, void> {
  final NewsRepository _newsRepository;
  GetNewsUseCase(this._newsRepository);
  @override
  Future<DataState<List<NewsEntity>>> call({void params}) {
    return _newsRepository.getNews();
  }
}
