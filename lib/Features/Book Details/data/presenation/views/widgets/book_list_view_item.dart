import 'package:books_test_app/Features/AddNewBooks/data/models/books_model.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/book_details_view.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/custom_book_image.dart';
import 'package:books_test_app/Features/manger/cubit/books_cubit.dart';
import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatefulWidget {
  const BookListViewItem({
    super.key,
    required this.booksModel,
    this.isInFavouriteList = false,
  });
  final BooksModel booksModel;
  final bool isInFavouriteList;
  @override
  State<BookListViewItem> createState() => _BookListViewItemState();
}

class _BookListViewItemState extends State<BookListViewItem> {
  bool isfavourite = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      BookDetailsView(booksModel: widget.booksModel),
                ));
              },
              child: CustomBookImage(bookPic: widget.booksModel.image)),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    widget.booksModel.name,
                    style: style20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  widget.booksModel.author,
                  style: const TextStyle(
                      color: Colors.white54, fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    const Text(
                      'Free',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    const Spacer(),
                    !widget.isInFavouriteList
                        ? GestureDetector(
                            onTap: () {
                              isfavourite = !isfavourite;
                              print(isfavourite.toString());
                              BookCubit.get(context).addFavouriteBook(
                                  bookmodel: widget.booksModel);
                              setState(() {});
                            },
                            child: Icon(Icons.favorite_outlined,
                                color: isfavourite ? Colors.red : Colors.grey))
                        : const SizedBox(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
