import 'package:flutter/cupertino.dart';
import 'package:mvmm/feature/home/presentaion/views/widgets/custom_book_image.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(itemBuilder: (context, index) {

        return  const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
child: CustomBookImage(),
        );


      },
      scrollDirection: Axis.horizontal,
itemCount: 10,
      ),

    );
  }
}
