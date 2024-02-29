import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/app/models/profiles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileLink extends StatelessWidget {
  const ProfileLink({
    super.key,
    required this.profile,
  });

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: profile.url.isEmpty
          ? null
          : () async {
              await launchUrl(Uri.parse(profile.url));
            },
      child: SvgPicture.asset(
        profile.icon,
        height: 30,
      ),
    );
  }
}