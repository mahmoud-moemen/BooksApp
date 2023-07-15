import 'package:flutter/material.dart';

import 'custom_book_item.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const Padding(padding: EdgeInsets.only(left: 8));
        },
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount:20 ,
          itemBuilder:(context, index)
          {
            return CustomBookImage();
          }
      ),
    );
  }
}