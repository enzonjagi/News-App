import 'package:equatable/equatable.dart';
import 'package:news_app/src/domain/entities/source.dart';

class Article extends Equatable {
  //The 'id' fied will be required later, just adding it now
  final int id;

  final Source source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  //ignore: missing_default_value_for_parameter
  const Article({
    required this.id,
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  @override
  // TODO: implement props
  List<Object> get props {
    return [
      id,
      source,
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content,
    ];
  }
}
