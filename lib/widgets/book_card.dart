import 'package:book_app/models/book_model.dart';
import 'package:book_app/theme.dart';
import 'package:flutter/material.dart';

class BookCardPage extends StatelessWidget {
  final BookModel book;
  BookCardPage(this.book);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset.fromDirection(-2, -6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image(
                  height: 80,
                  width: 80,
                  image: AssetImage(
                    'assets/buku.jpg',
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     book.title!,
                      style: primaryTextstyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Subtitle',
                      style: primaryTextstyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Rp.1000',
                      style: primaryTextstyle.copyWith(
                          fontSize: 10, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
