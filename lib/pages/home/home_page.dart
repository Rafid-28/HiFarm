import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hi_farm/pages/news/components/news_list_tile.dart';
import 'package:hi_farm/pages/news/models/news_model.dart';
import 'package:hi_farm/style/app_style.dart';
import '../../size_config.dart';

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
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0), // Add padding here
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: const Padding(
          padding: EdgeInsets.only(bottom: 7),
          child: Text("👋 Hello!"),
        ),
        subtitle: Text(
          "User0",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w700),
        ),
        trailing: Container(
          width: 48.0,
          height: 48.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppStyle.profile),
              fit: BoxFit.cover,
              repeat: ImageRepeat.repeat,
            ),
            borderRadius: BorderRadius.all(Radius.circular(18.0)),
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 18.0,
                height: 18.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyle.primarySwatch,
                  border: Border.all(
                    color: Colors.white,
                    width: 3.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({Key? key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: CupertinoButton(
            onPressed: () {},
            child: SvgPicture.asset(AppStyle.searchIcon),
          ),
          suffixIcon: CupertinoButton(
            onPressed: () {},
            child: SvgPicture.asset(AppStyle.filtterIcon),
          ),
          hintText: "Search...",
          fillColor: AppStyle.inputFillColor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}

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

class AgricultureNewsCard extends StatelessWidget {
  const AgricultureNewsCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
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
          Expanded(
            child: ListView.builder(
              itemCount: NewsData.recentNewsData.length,
              itemBuilder: (context, index) =>
                  NewsListTile(NewsData.recentNewsData[index]),
            ),
          ),
        ],
      ),
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
