import 'package:book_app/providers/book_provider.dart';
import 'package:book_app/theme.dart';
import 'package:book_app/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    BookProvider bookProvider = Provider.of<BookProvider>(context);

    Widget header() {
      return Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset.fromDirection(-2, -6),
            ),
          ],
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, Refsi !',
              style: whiteTextStyle.copyWith(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Which book suits your \ncurrent mood?',
              style: whiteTextStyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ],
        )),
      );
    }

    Widget body() {
      return Padding(
        padding: const EdgeInsets.only(top: 190, left: 10, right: 10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset.fromDirection(-2, -6),
                  ),
                ],
              ),
              child: Column(
                children: bookProvider.books
                    .map(
                      (book) => BookCardPage(book),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              header(),
              body(),
            ],
          ),
        ));
  }
}
