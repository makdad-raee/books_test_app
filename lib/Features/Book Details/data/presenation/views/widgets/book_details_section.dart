import 'package:books_test_app/Features/AddNewBooks/data/models/books_model.dart';
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
        const BookRating(
          count: 5,
          rating: 'rating',
     
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          lorem,
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 37,
        ),
       
      ],
    );
  }
}
