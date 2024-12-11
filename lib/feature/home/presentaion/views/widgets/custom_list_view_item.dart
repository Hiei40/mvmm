import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*.23,

      child: AspectRatio(
        aspectRatio: 2.8/4,
        child: Container(

          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(AssetsData.testImage))
          ),

        ),
      ),
    );
  }
}
