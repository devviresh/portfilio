import 'package:flutter/material.dart';
import 'package:my_portfolio/app/widgets/nav/navbar.dart';

import '../../widgets/bottom_bar.dart';
import '../../widgets/nav/nav_drawer.dart';
import '../error/under_construction.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NavBar(),
      endDrawer: NavDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'About',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),

          Expanded(child: UnderConstructions()),

          /// Bottom Bar
          BottomBar(),
        ],
      ),
    );
  }
}
