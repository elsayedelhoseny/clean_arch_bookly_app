class BookEntite {
  final String bookId;
  final String? image;
  final String title;
  final String? subtitle;
  final double? price;
  final num? rating;

  BookEntite(
      {required this.bookId,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.rating});
}
