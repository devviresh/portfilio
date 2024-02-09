import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/custom_sized_box.dart';
import 'package:my_portfolio/app/models/profiles.dart';
import '../constants/responsive.dart';
import '../constants/theme.dart';
import '../models/socials.dart';
import 'profile_link.dart';
import 'social_link.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.secondary,
              AppColors.secondary,
            ],
          )),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1150),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Flex(
                direction:
                    Screen.isMobile(context) ? Axis.vertical : Axis.horizontal,
                children: [
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Viresh Dev',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text('Vaishali, Bihar, India'),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Icon(Icons.email_rounded),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text('vireshdev5e@gmail.com'),
                          ],
                        ),
                      ]),
                  Screen.isMobile(context) ? const SBH20() : const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Connect',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < socials.length; i++)
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: SocialLink(
                                social: socials[i],
                              ),
                            ),
                        ],
                      ),
                      const SBH20(),
                      const Text(
                        'Profiles',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < profiles.length; i++)
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: ProfileLink(
                                profile: profiles[i],
                              ),
                            ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const Divider(
          height: 0,
          color: AppColors.blueBorder,
        ),

        /// Copyright
        AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.secondary,
          centerTitle: true,
          title: const Text(
            'END OF THE ERA!',
            style: TextStyle(color: AppColors.primaryDark),
          ),
          actions: [Container()],
        )
      ],
    );
  }
}
