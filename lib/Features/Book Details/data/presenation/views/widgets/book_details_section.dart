import 'package:books_test_app/Features/AddNewBooks/data/models/books_model.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/book_action.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/book_rating.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/custom_book_image.dart';
import 'package:books_test_app/constants.dart';
import 'package:books_test_app/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.booksModel});
  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(bookPic: booksModel.image),
        ),
        const SizedBox(
          height: 45,
        ),
        Text(
          booksModel.name,
          // booksModel.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          booksModel.author,
          // booksModel.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        BookRating(
          count: 5,
          rating: 'rating',
          // count: booksModel.volumeInfo.pageCount ?? 0,
          // rating: booksModel.volumeInfo.maturityRating ?? '',
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          lorem,
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 37,
        ),
        BooksAction(),
      ],
    );
  }
}
