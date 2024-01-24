import 'package:flutter/material.dart';
import 'package:hi_farm/pages/news/components/news_list_tile.dart';
import 'package:hi_farm/pages/news/models/news_model.dart';

class AgricultureNews {
  final String title;
  final String description;
  final String imageUrl;

  AgricultureNews({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

class AgricultureNewsCard extends StatelessWidget {
  const AgricultureNewsCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "Recent News",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
        Container(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: NewsData.recentNewsData.length,
            itemBuilder: (context, index) =>
                NewsListTile(NewsData.recentNewsData[index]),
          ),
        ),
      ],
    );
  }
}
