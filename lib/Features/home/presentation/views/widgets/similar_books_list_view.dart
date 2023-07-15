
import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return const Padding(padding: EdgeInsets.only(left: 8));
          },
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount:20 ,
          itemBuilder:(context, index)
          {
            return const CustomBookImage();
          }
      ),
    );
  }
}
