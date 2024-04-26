import 'package:flutter/material.dart';

import '../../constants/theme.dart';

class NavDrawerTile extends StatelessWidget {
  const NavDrawerTile({
    super.key,
    required this.name,
    required this.screen,
    required this.icon,
  });

  final String name;
  final String screen;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.primaryDark,
      ),
      selected: ModalRoute.of(context)?.settings.name == '/$screen',
      selectedTileColor: AppColors.blueBorder,
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
    icon: Icons.home_outlined,
  ),
  const NavDrawerTile(
    name: 'About',
    screen: 'about',
    icon: Icons.location_history_outlined,
  ),
  const NavDrawerTile(
    name: 'Projects',
    screen: 'projects',
    icon: Icons.document_scanner_outlined,
  ),
  const NavDrawerTile(
    name: 'Blog',
    screen: 'blog',
    icon: Icons.dynamic_feed_rounded,
  ),
  const NavDrawerTile(
    name: 'Contact',
    screen: 'contact',
    icon: Icons.call_outlined,
  ),
];
