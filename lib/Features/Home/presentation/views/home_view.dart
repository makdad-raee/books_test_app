import 'package:books_test_app/Features/AddNewBooks/data/presentation/views/add_new_books_view.dart';
import 'package:books_test_app/Features/manger/cubit/books_cubit.dart';
import 'package:books_test_app/Features/manger/cubit/books_state.dart';
import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<BookCubit>(
        create: (context) => BookCubit(),
        child: BlocConsumer<BookCubit, BooksState>(
          listener: (context, state) {
            if (state is BooksAddBottomNavState) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AddNewBooksView(),
              ));
            }
          },
          builder: (context, state) {
            var cubit = BookCubit.get(context);
            return Scaffold(
              bottomNavigationBar: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                child: Container(
                  //  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: BottomNavigationBar(
                        unselectedItemColor: Colors.grey,
                        selectedItemColor: Colors.white,
                        backgroundColor: Colors.grey[500],
                        currentIndex: cubit.currentIndex,
                        onTap: (value) {
                          cubit.changeBottomNav(value);
                        },
                        items: bottomNavigationBarItems),
                  ),
                ),
              ),
              // backgroundColor: Colors.white,
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: cubit.screensNave[cubit.currentIndex],
              ),
            );
          },
        ),
      ),
    );
  }
}
