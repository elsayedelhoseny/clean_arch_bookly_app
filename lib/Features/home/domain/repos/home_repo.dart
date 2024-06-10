import 'package:bookly/Features/home/domain/entites/book_entite.dart';

abstract class HomeRepo {
  Future<List<BookEntite>> fetchFeaturedBooks();
  Future<List<BookEntite>> fetchNewestBooks();
}
