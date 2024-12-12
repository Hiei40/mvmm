import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mvmm/Features/home/data/models/book_model/book.dart';
import 'package:mvmm/Features/home/data/repo/home_repo.dart';
import 'package:mvmm/core/errors/faliure.dart';
import 'package:mvmm/core/utils/api_service.dart';

class HomeRepoImp implements HomeRepo {
  final Apiservice apiservice;

  HomeRepoImp(this.apiservice);
  @override
  Future<Either<Failure, List<Bookmodel>>> fetchNewsetBooks() async {
    try {
      var data = await apiservice.get(
          endpoint:
          'volumes?Filtering=free-ebooks&Sorting=newest &q=programming');
      List<Bookmodel> books = [];
      for (var item in data['items']) {
        books.add(Bookmodel.fromJson(item));
      }
      return Right(books);
    }
    catch (e) {
      if(e is DioError){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }


  @override
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiservice.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<Bookmodel> books = [];
      for (var item in data['items']) {
        books.add(Bookmodel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }













}
