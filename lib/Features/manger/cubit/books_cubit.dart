import 'package:books_test_app/Features/manger/cubit/books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<BooksState> {
  LoginCubit() : super(BooksInitialState());

  static LoginCubit get(context) {
    return BlocProvider.of(context);
  }

  int currentIndex = 0;
  List<Widget> screensNave = const [
    // FeedsScreen(),
    // ChatsScreen(),
    // NewPostView(),
    // UsersScreen(),
    // SettingsScreen(),
  ];
  void changeBottomNav(index) {
    // if (index == 2) {
    //   emit(SocialNewPostBottomNavState());
    // } else {
    //   if (index == 1) {
    //     getAllUsers();
    //   }
    //   currentIndex = index;
    //   emit(SocialChangeBottomNavState());
    // }
  }
}
