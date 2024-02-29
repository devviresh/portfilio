import 'package:flutter/material.dart';

import '../../screens/about/about_screen.dart';
import '../../screens/blog/blog_screen.dart';
import '../../screens/contact/contact_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/project/project_screen.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    super.key,
    required this.text,
    required this.screen,
  });

  final String text;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Text(text),
    );
  }
}

final List<NavButton> navigation = [
  const NavButton(
    text: 'Home',
    screen: HomeScreen(),
  ),
  const NavButton(
    text: 'About',
    screen: AboutScreen(),
  ),
  const NavButton(
    text: 'Projects',
    screen: ProjectScreen(),
  ),
  const NavButton(
    text: 'Blog',
    screen: BlogScreen(),
  ),
  const NavButton(
    text: 'Contact',
    screen: ContactScreen(),
  ),
];