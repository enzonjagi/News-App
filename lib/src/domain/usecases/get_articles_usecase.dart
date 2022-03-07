import 'package:news_app/src/core/params/articles_request.dart';
import 'package:news_app/src/core/resources/data_state.dart';
import 'package:news_app/src/core/usecases/usecase.dart';
import 'package:news_app/src/domain/entities/article.dart';
import 'package:news_app/src/domain/repositories/articles_repository.dart';

class GetArticlesUseCase
    implements UseCase<DataState<List<Article>>, ArticlesRequestParams> {
  final ArticlesRepository _articlesRepository;

  GetArticlesUseCase(this._articlesRepository);

  @override
  //ignore: invalid_override
  Future<DataState<List<Article>>> call(
      {required ArticlesRequestParams params}) {
    return _articlesRepository.getBreakingNewsArticles(params);
  }
}
