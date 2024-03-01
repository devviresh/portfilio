import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    super.key,
    required this.name,
    required this.screen,
  });

  final String name;
  // final Widget screen;
  final String screen;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/$screen');
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => screen),
        // );
      },
      child: Text(name),
    );
  }
}

final List<NavButton> navigation = [
  const NavButton(
    name: 'Home',
    screen: '',
    // screen: HomeScreen(),
  ),
  const NavButton(
    name: 'About',
    screen: 'about',
    // screen: AboutScreen(),
  ),
  const NavButton(
    name: 'Projects',
    screen: 'projects',

    // screen: ProjectScreen(),
  ),
  const NavButton(
    name: 'Blog',
    screen: 'blog',

    // screen: BlogScreen(),
  ),
  const NavButton(
    name: 'Contact',
    screen: 'contact',

    // screen: ContactScreen(),
  ),
];
