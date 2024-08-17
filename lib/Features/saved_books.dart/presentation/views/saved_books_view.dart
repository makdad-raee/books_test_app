import 'package:books_test_app/Features/saved_books.dart/presentation/views/widgets/saved_books_view_body.dart';
import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';

class SavedBooksView extends StatelessWidget {
  const SavedBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Saved Books',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        backgroundColor: scaffoldBackgroundColor,
        leading: const SizedBox(),
      ),
      body: const SavedBooksViewBody(),
    );
  }
}
