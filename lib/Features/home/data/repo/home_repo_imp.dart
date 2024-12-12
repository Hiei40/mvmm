import 'package:dartz/dartz.dart';
import 'package:mvmm/Features/home/data/models/book_model/book.dart';
import 'package:mvmm/Features/home/data/repo/home_repo.dart';
import 'package:mvmm/core/errors/faliure.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Future<Either<Failure, List<Bookmodel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}