import 'package:flutter/material.dart';

class Field {
  final String title;
  final IconData icon;

  Field({
    required this.title,
    required this.icon,
  });
}

final List<Field> fields = [
  Field(title: 'Perkebunan', icon: Icons.eco),
  Field(title: 'Holtikultura', icon: Icons.local_florist),
  Field(title: 'Tanaman Toga', icon: Icons.grass),
  Field(title: 'Tanaman Hias', icon: Icons.filter_vintage),
  Field(title: 'Padi-padian', icon: Icons.rice_bowl),
];
