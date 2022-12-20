class BookModel {
  String? title;
  String? subtitle;
  double? price;
  String? image;
  String? url;

  BookModel({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
    required this.url,
  });

  BookModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    price = double.tryParse(json['price'].toString());
    image = json['image'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'price': price,
      'image': image,
      'url': url,
    };
  }
}
