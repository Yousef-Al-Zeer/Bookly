import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(
                imageURL:
                    "https://w7.pngwing.com/pngs/589/468/png-transparent-pile-of-books-the-book-stall-book-discussion-club-book-cover-book-design-book-stall-book-discussion-club-book-cover-thumbnail.png",
              ),
            );
          }),
    );
  }
}
