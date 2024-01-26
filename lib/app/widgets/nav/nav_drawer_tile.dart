import 'package:flutter/material.dart';

import '../../constants/theme.dart';
import '../../screens/about/about_screen.dart';
import '../../screens/blog/blog_screen.dart';
import '../../screens/contact/contact_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/project/project_screen.dart';

class NavDrawerTile extends StatelessWidget {
  const NavDrawerTile({
    super.key,
    required this.name,
    required this.screen,
  });

  final String name;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: AppColors.primaryDark,
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      title: Text(name),
    );
  }
}

final List<NavDrawerTile> drawerTiles = [
  const NavDrawerTile(
    name: 'Home',
    screen: HomeScreen(),
  ),
  const NavDrawerTile(
    name: 'About',
    screen: AboutScreen(),
  ),
  const NavDrawerTile(
    name: 'Projects',
    screen: ProjectScreen(),
  ),
  const NavDrawerTile(
    name: 'Blog',
    screen: BlogScreen(),
  ),
  const NavDrawerTile(
    name: 'Contact',
    screen: ContactScreen(),
  ),
];
