import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(personPIc),
          ),
          const SizedBox(
            width: 8,
          ),
          Text('Hello , Lenardo', style: style16),
          // Container(
          //   height: 50,
          //   width: 55,
          //   decoration: BoxDecoration(
          //     color: Colors.grey,
          //     borderRadius: BorderRadius.circular(35),
          //     border: Border.all(width: 0.5, color: Colors.black12),
          //     image: const DecorationImage(
          //         image: NetworkImage(personPIc), fit: BoxFit.fill),
          //   ),
          // ),
          // Image.asset(

          //   bookPic2,
          //   width: 5,
          //   height: 18.1,
          // ),

          const Spacer(),
          IconButton(
              onPressed: () {
                // GoRouter.of(context).push(AppRouter.kSearchView);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              )),
        ],
      ),
    );
  }
}
