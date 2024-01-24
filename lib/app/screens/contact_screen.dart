import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/navbar.dart';
import 'under_construction.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NavBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Contact me',
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
