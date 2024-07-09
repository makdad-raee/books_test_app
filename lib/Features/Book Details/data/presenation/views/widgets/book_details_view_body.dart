import 'package:books_test_app/Features/AddNewBooks/data/models/books_model.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/book_details_view.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/book_details_section.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/custom_appbar_book_details.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/custom_book_image.dart';
import 'package:books_test_app/constants.dart';
import 'package:books_test_app/core/utils/Books/books.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.booksModel,
  });
  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomAppbarBookDetails(),
                BookDetailsSection(booksModel: booksModel),
                const Expanded(
                  child: SizedBox(
                    height: 0,
                  ),
                ),
                Text(
                  'similar books',
                  style: style24.copyWith(fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  BookDetailsView(booksModel: books[index]),
                            ));
                          },
                          child: CustomBookImage(
                            bookPic: books[index].image,
                          )),
                    ),
                  ),
                ),
                // const SimilarBooksSection(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
