import 'package:flutter/material.dart';
import 'package:hi_farm/style/app_style.dart';

import 'components/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HiFarm',
      theme: AppStyle.theme,
      home: const BottomBar(),
    );
  }
}
