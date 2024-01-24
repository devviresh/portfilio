import 'package:flutter/material.dart';
import 'package:my_portfolio/app/widgets/navbar.dart';

import 'under_construction.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NavBar(),
      body: UnderConstructions(),
    );
  }
}