class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(title: "Shoes", image: "assets/shoes.jpg"),
  Category(title: "Beauty", image: "assets/beauty.png"),
];
