import 'package:books_test_app/Features/AddNewBooks/data/models/books_model.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BookDetailsViewBody(booksModel: booksModel),
      ),
    );
  }
}
