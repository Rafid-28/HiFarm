import 'package:flutter/material.dart';
import 'package:hi_farm/models/consultant.dart';

import 'package:hi_farm/widgets/product_card.dart';

class ConsultantList extends StatefulWidget {
  const ConsultantList({super.key});
  @override
  _ConsultantListState createState() => _ConsultantListState();
}

class _ConsultantListState extends State<ConsultantList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultant List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
