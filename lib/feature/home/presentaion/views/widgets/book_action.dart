import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        child: CustomButton(backgroundColor: Colors.white,

          textcolor: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),

          ),
          text: '19.99 €',
        ),

      ),
      Expanded(
        child: CustomButton(
          backgroundColor: Color(0xffEF8262),

          textcolor: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),

          ), text: 'Free Preview',
        ),
      ),


    ],);
  }
}
