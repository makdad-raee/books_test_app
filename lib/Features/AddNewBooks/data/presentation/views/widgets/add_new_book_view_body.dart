import 'package:books_test_app/Features/AddNewBooks/data/models/books_model.dart';
import 'package:books_test_app/Features/manger/cubit/books_cubit.dart';
import 'package:books_test_app/Features/manger/cubit/books_state.dart';
import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddNewBooksViewBody extends StatefulWidget {
  const AddNewBooksViewBody({super.key});

  @override
  State<AddNewBooksViewBody> createState() => _AddNewBooksViewBodyState();
}

class _AddNewBooksViewBodyState extends State<AddNewBooksViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var autherNamecontroller = TextEditingController();
    var ctegorycontroller = TextEditingController();

    var height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BlocConsumer<BookCubit, BooksState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Add New Books',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CustomTExtFormField(
                      controller: ctegorycontroller,
                      hintText: 'Name of the book',
                      icon: Icons.library_books_sharp),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CustomTExtFormField(
                      controller: nameController,
                      hintText: 'Author Name',
                      icon: Icons.person),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CustomTExtFormField(
                      controller: autherNamecontroller,
                      hintText: 'Year',
                      textInputType: TextInputType.number,
                      icon: Icons.category),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {
                            BooksModel bookmodel = BooksModel(
                                name: nameController.text,
                                author: autherNamecontroller.text,
                                image: bookPic,
                                category: ctegorycontroller.text);
                            if (formkey.currentState!.validate()) {
                              BookCubit.get(context)
                                  .addBook(bookmodel: bookmodel);
                              Navigator.of(context).pop();
                              setState(() {});
                            }
                          },
                          icon: const Icon(
                            Icons.add_circle_outlined,
                            color: Colors.green,
                            size: 64,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomTExtFormField extends StatelessWidget {
  const CustomTExtFormField(
      {super.key,
      required this.hintText,
      required this.icon,
      this.textInputType = TextInputType.text,
      this.suffixIcon,
      this.controller,
      this.obscureText = false});
  final String hintText;
  final IconData icon;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'must not be empty';
        }
        return null;
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: Icon(icon),
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}
