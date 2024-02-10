import 'package:flutter/material.dart';
import 'package:hi_farm/models/consultant.dart';
import 'package:hi_farm/models/field.dart';
import 'package:hi_farm/screens/start_constl.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fields'),
      ),
      body: ListView.builder(
        itemCount: fields.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: InkWell(
                onTap: () {
                  // Navigate to the details page with the corresponding field
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        field: fields[index],
                        product: products[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: Icon(fields[index].icon, size: 40),
                    title: Text(
                      fields[index].title,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
