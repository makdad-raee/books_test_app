import 'package:books_test_app/Features/Favourite/presentaion/views/widgets/favourite_books_view_body.dart';

import 'package:flutter/material.dart';

class FavouriteBooksView extends StatelessWidget {
  const FavouriteBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Favourite Books',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        leading: const SizedBox(),
      ),
      body: const FavouriteBooksViewBody(),
    );
  }
}
