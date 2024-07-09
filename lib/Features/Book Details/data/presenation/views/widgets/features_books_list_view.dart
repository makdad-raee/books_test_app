import 'package:books_test_app/Features/Book%20Details/data/presenation/views/book_details_view.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/custom_book_image.dart';
import 'package:books_test_app/core/utils/Books/books.dart';
import 'package:flutter/material.dart';

class FeaturesBooksListView extends StatelessWidget {
  const FeaturesBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
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
    );
  }
}
