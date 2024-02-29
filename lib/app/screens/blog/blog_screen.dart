import 'package:flutter/material.dart';

import '../../common_widgets/bottom_bar.dart';
import '../../common_widgets/nav/nav_drawer.dart';
import '../../common_widgets/nav/navbar.dart';
import '../error/under_construction.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

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
            'Blogs',
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
