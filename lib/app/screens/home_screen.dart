import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/app/models/skills.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/projects.dart';
import '../widgets/project_card.dart';
import '../widgets/skill_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 240,
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(
              height: 1,
            )),
        elevation: 5.0,

        /// Logo
        leading: Row(
          children: [
            const SizedBox(
              width: 200,
            ),
            CircleAvatar(
              backgroundColor: Colors.black54,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset('./assets/image/vd.png'),
              ),
            )
          ],
        ),

        /// Name
        title: const Text('Viresh Dev'),

        /// Pages
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('About'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Projects'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Blog'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Contact'),
          ),
          const SizedBox(
            width: 200,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 100),
        children: [
          /// Heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Profile
                CircleAvatar(
                  radius: 150,
                  child: Image.asset('./assets/image/profile.png'),
                ),
                const SizedBox(
                  width: 100,
                ),

                /// Introduction
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'I\'m Viresh Dev',
                        style: TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'A self-taught Full stack and a Flutter Developer based in Vaishali (IN).\nI love building apps and websites that can solve real-world problems, \nand add value to society.',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        children: [
                          /// Resume
                          FilledButton(
                              onPressed: () async {
                                await launchUrl(Uri.parse(
                                    "https://docs.google.com/document/d/1tdOiWysK3fz6yYDX1QZC-4UPZAzSXpiwaPffWyuYvec/edit?usp=sharing"));
                              },
                              child: const Text('View Resume')),
                          const SizedBox(
                            width: 10,
                          ),

                          /// Contact form
                          FilledButton.tonal(
                              onPressed: () {},
                              child: const Text('Contact me')),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),

          /// Skills
          Container(
            color: Colors.deepOrange.withAlpha(10),
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 220),
            child: Column(
              children: [
                const Text(
                  'Skills',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                GridView(
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            childAspectRatio: 0.85,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            maxCrossAxisExtent: 170),
                    children: [
                      for (int i = 0; i < skills.length; i++)
                        SkillCard(
                          skill: skills[i],
                        ),
                    ]),
                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),

          /// Projects
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 220),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Projects',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                GridView(
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            childAspectRatio: 0.72,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            maxCrossAxisExtent: 350),
                    children: [
                      for (int i = 0; i < projects.length; i++)
                        ProjectCard(
                          project: projects[i],
                        ),
                    ]),
              ],
            ),
          ),

          /// Services

          /// Bottom bar
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 220),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 215, 211),
                Color(0XFFF8EBEB),
              ],
            )),
            child: const Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Viresh Dev',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Connect',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        SocialLink(
                          url: 'https://github.com/devviresh',
                          image: './assets/svg/git.svg',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        SocialLink(
                          url: 'https://www.instagram.com/devviresh/',
                          image: './assets/svg/ig.svg',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        SocialLink(
                          url: 'https://linkedin.com/in/viresh-dev',
                          image: './assets/svg/ln.svg',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        SocialLink(
                          url: 'https://twitter.com/dev_viresh',
                          image: './assets/svg/x.svg',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        SocialLink(
                          url: '',
                          image: './assets/svg/fb.svg',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),

          /// Copyright
          AppBar()
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.connect_without_contact_rounded),
      //   onPressed: () {},
      // ),
    );
  }
}

class SocialLink extends StatelessWidget {
  const SocialLink({
    super.key,
    required this.url,
    required this.image,
  });

  final String url;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: url.isEmpty
          ? null
          : () async {
              await launchUrl(Uri.parse(url));
            },
      child: SvgPicture.asset(
        image,
        height: 30,
      ),
    );
  }
}
