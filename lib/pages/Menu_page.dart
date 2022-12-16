import 'package:book_app/theme.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.all(10),
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: primaryColor),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, Refsi !',
              style: primaryTextstyle.copyWith(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Which book suits your \ncurrent mood?',
              style: primaryTextstyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ],
        )),
      );
    }

    Widget body() {
      return Padding(
        padding: const EdgeInsets.only(top: 220, left: 10, right: 10),
        child: Container(
          margin: EdgeInsets.all(10),
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: whiteColor),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello, Refsi !',
                style: primaryTextstyle.copyWith(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Which book suits your \ncurrent mood?',
                style: primaryTextstyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ],
          )),
        ),
      );
    }

    return Scaffold(
      backgroundColor: containerColor,
        body: Stack(
      children: [
        header(),
        body(),
      ],
    ));
  }
}
