class Product {
  final String name;
  final String description;
  final String image;
  final String price;
  final String priceDescription;
  bool isFavorite;

  Product({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.priceDescription,
    this.isFavorite = false,
  });
}
