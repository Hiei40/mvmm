import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';
import 'similar_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return const CustomScrollView(
      slivers: [
SliverFillRemaining(
  hasScrollBody: false,
  child:   Padding(
    padding: EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CustomBookDetailsAppBar(),
        BooksDetailsSection(),

        BookAction(),
        SizedBox(
          height: 37,
        ),
        SimilarBooksSection(),
        SizedBox(
          height: 40.0,
        ),
      ],
    ),
  ) ,
)

      ],
    );


  }
}

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "You can also like",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        const SimilarBooksListview(),
      ],
    );
  }
}
