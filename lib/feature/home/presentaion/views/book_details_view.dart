import 'package:flutter/material.dart';
import 'package:mvmm/feature/home/presentaion/views/widgets/books_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
