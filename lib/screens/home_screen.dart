import 'package:flutter/material.dart';
import 'package:hi_farm/constants.dart';
import 'package:hi_farm/news/all_news.dart';
import 'package:hi_farm/news/components/news_list_tile.dart';
import 'package:hi_farm/news/details_screen.dart';

import 'package:hi_farm/news/news.dart';

import 'package:hi_farm/widgets/features.dart';
import 'package:hi_farm/widgets/home_appbar.dart';
import 'package:hi_farm/widgets/home_slider.dart';

import 'package:hi_farm/widgets/search_field.dart';
import 'package:hi_farm/widgets/start_consult.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                const SizedBox(height: 20),
                const SearchField(),
                const SizedBox(height: 20),
                HomeSlider(
                  onChange: (value) {
                    setState(() {
                      currentSlide = value;
                    });
                  },
                  currentSlide: currentSlide,
                ),
                const SizedBox(height: 20),
                const Categories(),
                const SizedBox(height: 25),
                const StartConsult(),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "News",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewsList()),
                        );
                      },
                      child: const Text("See all"),
                    ),
                  ],
                ), // Added missing closing parenthesis
                AgricultureNewsCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
