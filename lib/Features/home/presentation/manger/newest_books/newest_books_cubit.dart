import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mvmm/Features/home/data/models/book_model/book.dart';
import 'package:mvmm/Features/home/data/repo/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewsetBooks() async {
emit(NewestBooksLoading());
var result =await homeRepo.fetchFeaturedBooks();
result.fold((failure) {
  emit(NewestBooksFailure(failure.errMessage));
},
        (books)
{
  emit(NewestBooksSuccess(books));


  }

}

}
