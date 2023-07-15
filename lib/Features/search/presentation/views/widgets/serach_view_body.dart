import 'package:books_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 20),
          Text('Search Result',style: Styles.textStyle18),
          SizedBox(height: 20),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}


