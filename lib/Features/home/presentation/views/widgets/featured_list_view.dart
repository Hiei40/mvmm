import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvmm/Features/home/presentation/manger/featured_books/featured_books_cubit.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(

      builder: (context, state) {
        if(state is FeaturedBooksLoading){
          return const Center(child: CircularProgressIndicator(),);
        }
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,),
                  );
                },
            itemCount: state.books.length,),
          );
        }
if(state is FeaturedBooksFailure) {
  return const Text('error');

}
        else
          {
            return const CircularProgressIndicator();
          }

      },
    );
  }
}
