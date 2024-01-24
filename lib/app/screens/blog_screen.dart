import 'package:flutter/material.dart';

import '../widgets/navbar.dart';
import 'under_construction.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NavBar(),
      body: UnderConstructions(),
    );
  }
}