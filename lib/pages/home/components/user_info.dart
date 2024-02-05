import 'package:flutter/material.dart';
import 'package:hi_farm/style/app_style.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
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
