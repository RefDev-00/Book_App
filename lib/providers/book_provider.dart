import 'package:flutter/material.dart';
import 'package:book_app/models/book_model.dart';
import 'package:book_app/services/book_services.dart';

class BookProvider with ChangeNotifier {
  List<BookModel> _books = [];

  List<BookModel> get books => _books;

  set books(List<BookModel> books) {
    _books = books;
    notifyListeners();
  }

  Future<bool> getBooks() async {
    try {
      List<BookModel> books = await BookService().getBooks();
      _books = books;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
