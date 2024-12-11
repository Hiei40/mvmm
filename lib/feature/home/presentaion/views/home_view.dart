import 'package:flutter/material.dart';
import 'package:mvmm/core/utils/styles.dart';
import 'package:mvmm/feature/home/presentaion/views/widgets/FeatureBooksListView.dart';
import 'package:mvmm/feature/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:mvmm/feature/home/presentaion/views/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child:          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppbar(),
                  const FeatureBooksListView(),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Best Seller',
                    style: Styles.textStyle30.copyWith(fontFamily: "kGtSectraFine"),
                  ),
                ],
              ),
            ),

          ),
          const SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: BestSellerListView(),
            ),
          )
        ],
      )
    );
  }
}
