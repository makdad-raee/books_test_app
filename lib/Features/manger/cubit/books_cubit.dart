import 'dart:io';

import 'package:books_test_app/Features/AddNewBooks/data/models/books_model.dart';
import 'package:books_test_app/Features/Favourite/presentaion/views/favourite_books_view.dart';
import 'package:books_test_app/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:books_test_app/Features/manger/cubit/books_state.dart';
import 'package:books_test_app/Features/saved_books.dart/presentation/views/widgets/saved_books_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class BookCubit extends Cubit<BooksState> {
  BookCubit() : super(BooksInitialState());

  static BookCubit get(context) {
    return BlocProvider.of(context);
  }

  int currentIndex = 0;
  List<Widget> screensNave = const [
    HomeViewBody(),
    FavouriteBooksView(),
    SavedBooksViewBody(),
    SavedBooksViewBody(),
    SavedBooksViewBody(),
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

  void addBooks({
    required String name,
    required String author,
    required String image,
    required String category,
  }) {
    BooksModel(
      name: name,
      author: author,
      image: image,
      category: category,
    );
  }
  final ImagePicker picker = ImagePicker();
  File? profileimage;
  Future<void> pickProfileImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      profileimage = File(pickedImage.path);
      emit(PickedbookImageSuccesState());
    } else {
      print('No  Image Selected');
      emit(PickedbookImageErrorState());
    }
  }

}
