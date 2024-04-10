import 'package:flutter/material.dart';

import '../../constants/theme.dart';

class NavDrawerTile extends StatelessWidget {
  const NavDrawerTile({
    super.key,
    required this.name,
    required this.screen,
    // required this.icon,
  });

  final String name;
  final String screen;
  // final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Icon(
      //   icon,
      //   color: AppColors.primaryDark,
      // ),
      textColor: AppColors.primaryDark,
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, '/$screen');
      },
      title: Text(name),
    );
  }
}

final List<NavDrawerTile> drawerTiles = [
  const NavDrawerTile(
    name: 'Home',
    screen: '',
  ),
  const NavDrawerTile(
    name: 'About',
    screen: 'about',
  ),
  const NavDrawerTile(
    name: 'Projects',
    screen: 'projects',
  ),
  const NavDrawerTile(
    name: 'Blog',
    screen: 'blog',
  ),
  const NavDrawerTile(
    name: 'Contact',
    screen: 'contact',
  ),
];
