import 'dart:convert';

import 'package:book_app/models/book_model.dart';
import 'package:http/http.dart' as http;

class BookService {
  String baseUrl = 'https://api.itbook.store/1.0/new';

  Future<List<BookModel>> getBooks() async {
    var url = '$baseUrl/books';
    var headers = {
      'Content-Type': 'application/json'
    };

    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['books'];

      List<BookModel> books = [];

      for (var item in data) {
        books.add(BookModel.fromJson(item));
      }
      return books;
    } else {
      throw Exception('Gagal Get Data Book!');
    }
  }
}
