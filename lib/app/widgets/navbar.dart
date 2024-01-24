import 'package:flutter/material.dart';
import 'package:my_portfolio/app/screens/home_screen.dart';

import '../constants/theme.dart';
import '../screens/about_screen.dart';
import '../screens/blog_screen.dart';
import '../screens/contact_screen.dart';
import '../screens/project_screen.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 240,
      backgroundColor: AppColors.secondary,

      /// Logo
      leading: Row(
        children: [
          const SizedBox(
            width: 200,
          ),
          CircleAvatar(
            backgroundColor: AppColors.primaryDark,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.asset('./assets/image/vd.png'),
            ),
          )
        ],
      ),

      /// Name
      title: const Text('Viresh Dev'),

      /// Pages
      actions: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
          child: const Text('Home'),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutScreen()),
            );
          },
          child: const Text('About'),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProjectScreen()),
            );
          },
          child: const Text('Projects'),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BlogScreen()),
            );
          },
          child: const Text('Blog'),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContactScreen()),
            );
          },
          child: const Text('Contact'),
        ),
        const SizedBox(
          width: 200,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
