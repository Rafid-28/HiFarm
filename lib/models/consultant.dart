import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final double price;
  final List<Color> colors;
  final String field;
  final double rate;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.field,
    required this.rate,
  });
}

final List<Product> products = [
  Product(
    title: "Consultant 1",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/images/four.jpeg",
    price: 30000,
    colors: [
      Colors.black,
    ],
    field: "Perkebunan",
    rate: 0,
  ),
  Product(
    title: "Consultant 2",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/images/two.jpeg",
    price: 30000,
    colors: [
      Colors.black,
    ],
    field: "Holtikultura",
    rate: 4.8,
  ),
  Product(
    title: "Consultant 3",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/images/one.jpeg",
    price: 30000,
    colors: [
      Colors.black,
    ],
    field: "Tanaman Toga",
    rate: 4.8,
  ),
  Product(
    title: "Consultant 4",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/images/three.jpeg",
    price: 30000,
    colors: [
      Colors.black,
    ],
    field: "Tanaman Hias",
    rate: 4.8,
  ),
  Product(
    title: "Consultant 5",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/images/five.jpg",
    price: 30000,
    colors: [
      Colors.black,
    ],
    field: "Padi-padian",
    rate: 4.8,
  ),
];
