import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/book_list_view_item.dart';
import 'package:books_test_app/core/utils/Books/books.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(booksModel: newBooks[index]),
        );
      },
    );
  }
}
