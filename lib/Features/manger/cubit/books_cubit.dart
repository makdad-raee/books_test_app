import 'dart:io';

import 'package:books_test_app/Features/AddNewBooks/data/models/books_model.dart';
import 'package:books_test_app/Features/Favourite/presentaion/views/favourite_books_view.dart';
import 'package:books_test_app/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:books_test_app/Features/manger/cubit/books_state.dart';
import 'package:books_test_app/Features/saved_books.dart/presentation/views/saved_books_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

class BookCubit extends Cubit<BooksState> {
  BookCubit() : super(BooksInitialState());

  static BookCubit get(context) {
    return BlocProvider.of(context);
  }

  int currentIndex = 0;
  List<Widget> screensNave = const [
    HomeViewBody(),
    FavouriteBooksView(),
    SavedBooksView(),
    SavedBooksView(),
   
  ];
  void changeBottomNav(index) {
    if (index == 2) {
      emit(BooksAddBottomNavState());
    } else {
      if (index == 1) {
        //  getAllUsers();
      }
      currentIndex = index;
      emit(BooksChangeBottomNavState());
    }
  }

  void addBook({
    required BooksModel bookmodel,
  }) async {
    emit(AddNewBooksLoadigState());

    var noteBox = Hive.box<BooksModel>('books');

    await noteBox.add(bookmodel).then((value) {
      noteBox.close();
      emit(AddNewBookssucessState());
    }).catchError((error) {
      print('=========================');
      print('66666666666666666666666');
      print('=========================');
      emit(AddNewBooksErrorState());
    });
  }

  List<BooksModel> booksSaved = [];

  fetchAllNotes() async {
    emit(GetNewBookssucessState());
    await Hive.openBox<BooksModel>('books');

    var booksSavedf = Hive.box<BooksModel>('books');

    booksSaved = booksSavedf.values.toList();
    print(booksSavedf.length);

    emit(GetNewBookssucessState());
  }

  void addFavouriteBook({
    required BooksModel bookmodel,
  }) async {
    emit(AddNewBooksLoadigState());

    var noteBox = Hive.box<BooksModel>('favourites');

    await noteBox.add(bookmodel).then((value) {
      noteBox.close();
      emit(AddNewBookssucessState());
    }).catchError((error) {
      print('=========================');
      print('66666666666666666666666');
      print('=========================');
      emit(AddNewBooksErrorState());
    });
  }

  List<BooksModel> booksFavourite = [];

  fetchFavouriteNotes() async {
    emit(GetFavouriteBookssucessState());
    await Hive.openBox<BooksModel>('favourites');

    var booksSavedf = Hive.box<BooksModel>('favourites');

    booksFavourite = booksSavedf.values.toList();
    print(booksSavedf.length);

    emit(GetFavouriteBooksErrorState());
  }

  
}
