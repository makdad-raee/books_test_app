import 'package:books_test_app/Features/saved_books.dart/presentation/views/widgets/saved_books_view_body.dart';
import 'package:flutter/material.dart';

class SavedBooksView extends StatelessWidget {
  const SavedBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SavedBooksViewBody(),
    );
  }
}