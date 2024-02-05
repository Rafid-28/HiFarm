import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hi_farm/size_config.dart';
import 'package:hi_farm/style/app_style.dart';

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
          fillColor: Color.fromRGBO(223, 231, 218, 1),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
