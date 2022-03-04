import '../utils/constants.dart';

/*
we’re trying to write a clean code
so later on when we need to pass parameters to a function/method
to get the articles from the REST API we pass this class, 
because a clean function/method should have 3 or less parameters,
otherwise we create a class like this and pass it as a parameter to that function/method.
 */
class ArticlesRequestParams {
  final String apiKey;
  final String country;
  final String category;
  final int page;
  final int pageSize;

  const ArticlesRequestParams({
    this.apiKey = kApiKey,
    this.country = 'us',
    this.category = 'general',
    this.page = 1,
    this.pageSize = 29,
  });
}
