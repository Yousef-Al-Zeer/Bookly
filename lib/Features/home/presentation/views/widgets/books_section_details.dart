import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: CustomBookImage(
            imageURL:
                "https://w7.pngwing.com/pngs/589/468/png-transparent-pile-of-books-the-book-stall-book-discussion-club-book-cover-book-design-book-stall-book-discussion-club-book-cover-thumbnail.png",
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BooksRating(
          rating: "5",
          count: 223,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 24,
        ),
        const BooksAction(),
      ],
    );
  }
}
