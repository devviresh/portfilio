import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/theme.dart';
import 'package:my_portfolio/app/screens/about/about_screen.dart';
import 'package:my_portfolio/app/screens/blog/blog_screen.dart';
import 'package:my_portfolio/app/screens/contact/contact_screen.dart';
import 'package:my_portfolio/app/screens/error/under_construction.dart';
import 'package:my_portfolio/app/screens/home/home_screen.dart';
import 'package:my_portfolio/app/screens/project/project_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Viresh Dev',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/projects': (context) => const ProjectScreen(),
        '/blog': (context) => const BlogScreen(),
        '/contact': (context) => const ContactScreen(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const HomeScreen());
          case '/about':
            return MaterialPageRoute(builder: (context) => const AboutScreen());
          case '/projects':
            return MaterialPageRoute(
                builder: (context) => const ProjectScreen());
          case '/blog':
            return MaterialPageRoute(builder: (context) => const BlogScreen());
          case '/contact':
            return MaterialPageRoute(
                builder: (context) => const ContactScreen());
          // TODO: add error screen
          default:
            return MaterialPageRoute(
                builder: (context) => const UnderConstructions());
        }
      },
      // home: const HomeScreen(),
    );
  }
}
