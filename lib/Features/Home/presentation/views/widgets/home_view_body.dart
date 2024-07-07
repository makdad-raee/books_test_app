import 'package:books_test_app/Features/Book%20Details/data/presenation/views/book_details_view.dart';
import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 0.5, color: Colors.black12),
                image: const DecorationImage(
                    image: NetworkImage(personPIc), fit: BoxFit.cover),
              ),
            ),
            Text(
              'Hi, John',
              style: style18,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Popular Books',
          style: style30,
        ),
        GestureDetector(
          onTap:  () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookDetailsView(),));
          },
          child: Container(
            height: 200,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: .5, color: Colors.black12),
                image: const DecorationImage(
                    image: NetworkImage(personPIc), fit: BoxFit.cover),
                color: Colors.grey),
          ),
        ),
        Text('Fashionopios', style: style18),
        Text('Dana Tomas', style: style16),
        Text('Newest', style: style30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 0.5, color: Colors.black12),
                      image: const DecorationImage(
                          image: NetworkImage(personPIc), fit: BoxFit.cover),
                      color: Colors.grey),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Fashionopios', style: style18),
                    Text('Dana Tomas', style: style16),
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_border_outlined,
                          size: 36,
                        ))
                  ],
                )
              ],
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_outline,
                  size: 36,
                  color: Colors.black54,
                ))
          ],
        )
      ],
    );
  }
}
