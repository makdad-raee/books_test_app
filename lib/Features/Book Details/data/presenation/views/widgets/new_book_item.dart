import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 105,
        child: Row(
          children: [
            CustomBookImage(bookPic: ''),
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
                      "hhhhhhhhhh",
                      // booksModel.volumeInfo.title!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      //  style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "hhuytutfg",
                    // booksModel.volumeInfo.authors![0],
                    //style: Styles.textStyle14
                    //     .copyWith(color: const Color(0xff707070)),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        // style: Styles.textStyle20.copyWith(
                        //   fontWeight: FontWeight.bold,
                        //   fontFamily: 'Montserrat-Bold',
                        // ),
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
