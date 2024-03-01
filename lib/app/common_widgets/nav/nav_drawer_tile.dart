import 'package:flutter/material.dart';

import '../../constants/theme.dart';

class NavDrawerTile extends StatelessWidget {
  const NavDrawerTile({
    super.key,
    required this.name,
    required this.screen,
  });

  final String name;
  // final Widget screen;
  final String screen;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: AppColors.primaryDark,
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, '/$screen');

        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => screen),
        // );
      },
      title: Text(name),
    );
  }
}

final List<NavDrawerTile> drawerTiles = [
  const NavDrawerTile(
    name: 'Home',
    screen: '',
    // screen: HomeScreen(),
  ),
  const NavDrawerTile(
    name: 'About',
    screen: 'about',
    // screen: AboutScreen(),
  ),
  const NavDrawerTile(
    name: 'Projects',
    screen: 'projects',
    // screen: ProjectScreen(),
  ),
  const NavDrawerTile(
    name: 'Blog',
    screen: 'blog',
    // screen: BlogScreen(),
  ),
  const NavDrawerTile(
    name: 'Contact',
    screen: 'contact',
    // screen: ContactScreen(),
  ),
];
