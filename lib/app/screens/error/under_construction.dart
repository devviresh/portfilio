import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/app/constants/theme.dart';

class UnderConstructions extends StatelessWidget {
  const UnderConstructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Animation Image
        Expanded(
            child: Center(
                child: Lottie.asset('./assets/gif/work_in_progress.json'))),

        /// Text
        const Text(
          'Work In Progress',
          style: TextStyle(
              color: AppColors.primary,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20.0,
        )
      ],
    );
  }
}
