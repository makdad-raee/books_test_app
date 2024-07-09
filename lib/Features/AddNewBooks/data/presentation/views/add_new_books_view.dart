import 'package:books_test_app/Features/AddNewBooks/data/presentation/views/widgets/add_new_book_view_body.dart';
import 'package:books_test_app/Features/manger/cubit/books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewBooksView extends StatelessWidget {
  const AddNewBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider<BookCubit>(
          create: (context) => BookCubit(), child: const AddNewBooksViewBody()),
    );
  }
}
