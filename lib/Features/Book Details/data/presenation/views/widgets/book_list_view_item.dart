import 'package:books_test_app/Features/AddNewBooks/data/models/books_model.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/book_details_view.dart';
import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/custom_book_image.dart';
import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key, required this.booksModel,
  });
  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  BookDetailsView(booksModel: booksModel),));
      },
      child: SizedBox(
        height: 105,
        child: Row(
          children: [
            CustomBookImage(bookPic:booksModel.image),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child:  Text(
                      booksModel.name,
                      style: style20,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                     
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(booksModel.author,
                    style: TextStyle(color: Colors.white54,fontStyle: FontStyle.italic),
                      ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                       style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                      ),
                      const Spacer(),
                      // BookRating(
                      //   rating: booksModel.volumeInfo.maturityRating??"0",
                      //   count: booksModel.volumeInfo.pageCount??0,
                      // )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
