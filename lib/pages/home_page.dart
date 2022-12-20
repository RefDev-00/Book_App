import 'dart:async';

import 'package:book_app/providers/book_provider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    getInit();
    super.initState();
  }

  getInit() async {
    await Provider.of<BookProvider>(context, listen: false).getBooks();
    Navigator.pushNamed(context, '/Menu');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image(
              height: 300,
              width: 300,
              image: AssetImage(
                'assets/logo.png',
              ),
            ),
          ),
          LottieBuilder.asset('assets/loading.json')
        ],
      ),
    );
  }
}
