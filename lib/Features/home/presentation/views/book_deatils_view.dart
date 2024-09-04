import 'package:bookly_app/Features/home/presentation/views/widgets/book_deatils_view_body.dart';
import 'package:flutter/material.dart';

class BookDeatilsView extends StatelessWidget {
  const BookDeatilsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDeatilsViewBody()),
    );
  }
}
