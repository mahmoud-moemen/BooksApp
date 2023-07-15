
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_actions.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.19),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43),
        Text('The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 6),
        Text('Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.7))),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BookActions(),
      ],
    );
  }
}