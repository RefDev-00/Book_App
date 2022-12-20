import 'package:book_app/pages/Menu_page.dart';
import 'package:book_app/pages/home_page.dart';
import 'package:book_app/providers/book_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => BookProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => HomePage(),
            '/Menu': (context) => MenuPage(),
          },
        ));
  }
}
