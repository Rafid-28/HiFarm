import 'package:flutter/material.dart';
import 'package:hi_farm/size_config.dart';

class Consultant extends StatelessWidget {
  const Consultant({Key? key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 20),
        Text('Our Best Architect Profiles',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Container(
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              promoCard('assets/images/one.jpeg'),
              promoCard('assets/images/four.jpeg'),
              promoCard('assets/images/three.jpeg'),
              promoCard('assets/images/two.jpeg')
            ],
          ),
        ),
      ],
    );
  }
}

Widget promoCard(String image) {
  return Container(
    margin: EdgeInsets.only(right: 20.0),
    height: 500,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    ),
  );
}
