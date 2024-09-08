import 'package:bookly_app/Features/Search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          const SizedBox(
            height: 24,
          ),
          Text("Search Results", style: Styles.textStyle18),
          const SizedBox(
            height: 16,
          ),
          Expanded(child: SerachResultsListView()),
        ],
      ),
    );
  }
}

class SerachResultsListView extends StatelessWidget {
  const SerachResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: BookListViewItem(),
          child: Text("Books"),
        );
      },
    );
  }
}
