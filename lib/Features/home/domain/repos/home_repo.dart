import 'package:bookly/Features/home/domain/entites/book_entite.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntite>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntite>>> fetchNewestBooks();
}
