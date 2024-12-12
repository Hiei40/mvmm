import 'package:dartz/dartz.dart';
import 'package:mvmm/core/errors/faliure.dart';
import '../models/book_model/book.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Bookmodel>>> fetchNewsetBooks();
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks();
}
