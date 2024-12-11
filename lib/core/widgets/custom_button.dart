import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.backgroundColor,
    required this.textcolor,
    this.borderRadius, required this.text});
final Color backgroundColor ;
final Color textcolor;
final String text;
final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},

          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
             borderRadius:  borderRadius??BorderRadius.circular(
                  12
              ),
            ),

          ),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              color:textcolor,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
