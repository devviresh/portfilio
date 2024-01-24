import 'package:flutter/material.dart';

import '../widgets/navbar.dart';
import 'under_construction.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NavBar(),
      body: UnderConstructions(),
    );
  }
}
