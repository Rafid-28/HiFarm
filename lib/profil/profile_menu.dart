import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hi_farm/models/user.dart';

class ProfileScreen extends StatelessWidget {
  final User user;

  const ProfileScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.angleLeft),
        ),
        title: Text('Profile', style: Theme.of(context).textTheme.headline6),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? FontAwesomeIcons.sun : FontAwesomeIcons.moon),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(user.profileImage),
                ),
              ),
              const SizedBox(height: 10),
              Text('${user.username}',
                  style: Theme.of(context).textTheme.headline6),
              Text('${user.name}',
                  style: Theme.of(context).textTheme.bodyText2),
              Text('${user.email}',
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Adjust color as needed
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text('Edit Profile',
                      style: TextStyle(
                          color: Colors.black)), // Adjust color as needed
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: 'Settings',
                  icon: FontAwesomeIcons.cog,
                  onPress: () {}),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: 'Information',
                  icon: FontAwesomeIcons.info,
                  onPress: () {}),
              ProfileMenuWidget(
                title: 'Logout',
                icon: FontAwesomeIcons.doorOpen,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor =
        isDark ? Colors.blue : Colors.green; // Adjust color as needed

    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.green.withOpacity(0.1),
        ),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(title,
          style:
              Theme.of(context).textTheme.bodyText1?.apply(color: textColor)),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: const Icon(FontAwesomeIcons.angleRight,
                  size: 18.0, color: Colors.grey),
            )
          : null,
    );
  }
}
