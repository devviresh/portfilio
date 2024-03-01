import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/custom_sized_box.dart';
import '../../../constants/theme.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    super.key,
    required this.nameController,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 200),
              child: Lottie.asset(
                './assets/gif/success.json',
                repeat: false,
                fit: BoxFit.fill,
              ),
            ),
            FittedBox(
              child: Text(
                'Thankyou ${nameController.text.split(" ")[0]} for your message!',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(color: AppColors.primaryDark, fontSize: 18),
              ),
            ),
            const SBH50(),
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const HomeScreen()),
                // );
              },
              style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4))),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Text(
                  'Back to Home',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SBH20(),
          ],
        ),
      ],
    );
  }
}
