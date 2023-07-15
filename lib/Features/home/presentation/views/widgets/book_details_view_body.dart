import 'package:books_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:books_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:books_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:books_app/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_actions.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SafeArea(
                  child: CustomBookDetailsAppBar(),
                ),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 50.0)),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 40),
        ),
      ],
    );
    
  }
}




