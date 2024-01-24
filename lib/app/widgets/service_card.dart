import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../models/services.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.service,
  });

  final Service service;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Lottie.asset(
          service.path,
          fit: BoxFit.fill,
        )),
        const SizedBox(
          height: 20,
        ),
        Text(
          service.name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          service.about,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}