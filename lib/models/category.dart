class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(title: "Consultant", image: "assets/farmer.png"),
  Category(title: "Chat", image: "assets/chat.png"),
  Category(title: "Market", image: "assets/market.png"),
  Category(title: "News", image: "assets/news.png"),
];
