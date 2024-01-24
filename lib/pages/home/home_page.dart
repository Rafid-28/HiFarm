import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hi_farm/pages/home/components/consultant_list.dart';
import 'package:hi_farm/pages/home/components/news.dart';
import 'package:hi_farm/pages/home/components/search.dart';
import 'package:hi_farm/pages/home/components/user_info.dart';
import '../../size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockSizeHorizontal! * 7,
        ),
        child: SingleChildScrollView(
          // Wrap with SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const UserInfo(),
              const SizedBox(height: 16),
              const Search(),
              const SizedBox(height: 16),
              const Services(),
              const SizedBox(height: 16),
              const Consultant(),
              const SizedBox(height: 16),
              const AgricultureNewsCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({Key? key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Services",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ServicesButton(
              image: 'assets/icons/doctor-Icon.svg',
              color: const Color(0xffDCEDF9),
              routeName: '',
            ),
            ServicesButton(
              image: 'assets/icons/noun-pill.svg',
              color: const Color(0xffFAF0DB),
              routeName: '',
            ),
            ServicesButton(
              image: 'assets/icons/noun-medical-test.svg',
              color: const Color(0xffD6F6FF),
              routeName: '',
            ),
            ServicesButton(
              image: 'assets/icons/noun-corona.svg',
              color: const Color(0xffF2E3E9),
              routeName: '',
            ),
          ],
        ),
      ],
    );
  }
}

class ServicesButton extends StatelessWidget {
  final String image;
  final Color color;
  final String routeName;

  ServicesButton({
    required this.image,
    required this.color,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      padding: EdgeInsets.zero,
      child: Container(
        width: SizeConfig.blockSizeHorizontal! * 17,
        height: SizeConfig.blockSizeHorizontal! * 17,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
