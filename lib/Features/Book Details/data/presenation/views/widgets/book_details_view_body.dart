import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            height: 350,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: .5, color: Colors.black12),
                image: const DecorationImage(
                    image: NetworkImage(personPIc), fit: BoxFit.cover),
                color: Colors.grey),
          ),
        ),
        Text('Lenardo davinchi', style: style30),
        Text('Diana oil', style: style16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              size: 36,
              color: Colors.yellow,
            ),
            const Icon(
              Icons.star,
              size: 36,
              color: Colors.yellow,
            ),
            const Icon(
              Icons.star_border_rounded,
              size: 36,
              color: Colors.grey,
            ),
            const Icon(
              Icons.star_border_rounded,
              size: 36,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 8,
            ),
            Text('4.5', style: style18.copyWith(fontWeight: FontWeight.bold)),
            Text('/5', style: style18.copyWith(color: Colors.grey)),
          ],
        ),
        Text(
          'What is Lorem IpsumLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
          style: style16,
          overflow: TextOverflow.ellipsis,
          maxLines: 6,
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 120,
              decoration: const BoxDecoration(
                border: Border(right: BorderSide(width: 0.3)),
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.mode_comment_sharp), Text('Previews ')],
              ),
            ),
            Container(
              height: 50,
              width: 120,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.mode_comment_sharp), Text('Reviews ')],
              ),
            )
          ],
        )
      ],
    );
  }
}
