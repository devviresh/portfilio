import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/responsive.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: Screen.isWeb(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        const FittedBox(
          child: Text(
            'I\'m Viresh Dev',
            style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'A self-taught Full stack and a Flutter Developer based in Vaishali (IN). I love building apps and websites that can solve real-world problems, and add value to society.',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          textAlign: Screen.isWeb(context) ? TextAlign.start : TextAlign.center,
        ),
        const SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: Screen.isWeb(context)
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            /// Resume
            FilledButton(
                onPressed: () async {
                  await launchUrl(Uri.parse(
                      "https://docs.google.com/document/d/1tdOiWysK3fz6yYDX1QZC-4UPZAzSXpiwaPffWyuYvec/edit?usp=sharing"));
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('View Resume'),
                )),
            const SizedBox(
              width: 20,
            ),

            /// Contact form
            FilledButton.tonal(
                onPressed: () async {
                  await launchUrl(
                    Uri.parse('https://topmate.io/viresh_dev'),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Get in Touch'),
                )),
          ],
        )
      ],
    );
  }
}
