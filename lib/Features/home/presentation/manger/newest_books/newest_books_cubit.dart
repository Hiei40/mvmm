import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewsetBooks() async {
emit(NewestBooksLoading());
var result =await homeRepo.fetchFeaturedBooks();
result.fold((failure) {
  emit(NewestBooksFailure());
},
        (books)
{
  emit(NewestBooksSuccess(books));



});
  }
}
