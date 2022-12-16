import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushNamed(context, '/Menu'),
    );
    super.initState();
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
