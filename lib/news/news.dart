import 'package:flutter/material.dart';
import 'package:hi_farm/news/components/news_list_tile.dart';
import 'package:hi_farm/models/news_model.dart';

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
