import 'package:books_test_app/Features/Book%20Details/data/presenation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body:const Padding(
        padding: EdgeInsets.all(8.0),
        child: BookDetailsViewBody(),
      ) ,
    );
  }
}
