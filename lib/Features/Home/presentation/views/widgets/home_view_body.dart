import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/custom_appr.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/features_books_list_view.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/newest_book_list_view.dart';
import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbar(),
              const FeaturesBooksListView(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Newset  Books', style: style24),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: NewsetBookListView(),
        ))
      ],
    );
  }
}
