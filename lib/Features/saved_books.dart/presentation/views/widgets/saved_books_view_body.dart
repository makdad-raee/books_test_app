import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/book_list_view_item.dart';
import 'package:books_test_app/Features/manger/cubit/books_cubit.dart';
import 'package:books_test_app/Features/manger/cubit/books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SavedBooksViewBody extends StatelessWidget {
  const SavedBooksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BookCubit>(
      create: (context) => BookCubit()..fetchAllNotes(),
      child: BlocConsumer<BookCubit, BooksState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = BookCubit.get(context);
          return Builder(
            builder: (context) {
              return cubit.booksSaved.isNotEmpty
                  ? ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: cubit.booksSaved.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: BookListViewItem(
                              booksModel:
                                  BookCubit.get(context).booksSaved[index]),
                        );
                      },
                    )
                  : const Center(
                      child: Text(
                        'Ther is not Saved books',
                        style: TextStyle(color: Colors.white),
                      ),
                    );
            },
          );
        },
      ),
    );
    ;
  }
}
