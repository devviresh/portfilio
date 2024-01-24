import 'package:flutter/material.dart';

import '../widgets/navbar.dart';
import 'under_construction.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NavBar(),
      body: UnderConstructions(),
    );
  }
}