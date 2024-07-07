import 'package:books_test_app/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
          child: Container(
            //  height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: BottomNavigationBar(
                  unselectedItemColor: Colors.black45,
                  selectedItemColor: Colors.black,
                  backgroundColor: Colors.grey[500],
                  // currentIndex: cubit.currentIndex,
                  // onTap: (value) {
                  //   cubit.changeBottomNav(value);
                  // },
                  items: bottomNavigationBarItems),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
