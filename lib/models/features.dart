class features {
  final String title;
  final String image;

  features({
    required this.title,
    required this.image,
  });
}

final List<features> categories = [
  features(title: "Consultant", image: "assets/farmer.png"),
  features(title: "Chat", image: "assets/chat.png"),
  features(title: "Market", image: "assets/market.png"),
  features(title: "News", image: "assets/news.png"),
];
