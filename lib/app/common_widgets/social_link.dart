import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/app/models/socials.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLink extends StatelessWidget {
  const SocialLink({
    super.key,
    required this.social,
  });

  final Social social;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: social.url.isEmpty
          ? null
          : () async {
              await launchUrl(Uri.parse(social.url));
            },
      child: SvgPicture.asset(
        social.icon,
        height: 30,
      ),
    );
  }
}