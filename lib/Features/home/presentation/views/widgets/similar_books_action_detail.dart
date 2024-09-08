import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksActionSection extends StatelessWidget {
  const SimilarBooksActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You may also like ",
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const SimilarBooksList(),
      ],
    );
  }
}
