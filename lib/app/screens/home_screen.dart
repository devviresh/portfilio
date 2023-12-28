import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/app/models/skills.dart';

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
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
            // const Text('Viresh Dev'),
          ],
        ),

        /// Name
        title: const Text('Viresh Dev'),

        /// Pages
        actions: [
          TextButton(
            onPressed: () {},
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.home_outlined),
                SizedBox(
                  width: 5.0,
                ),
                Text('About'),
              ],
            ),
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
            child: const Text('contact'),
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
                        'A self-taught Full stack and a Flutter Developer based in Vaishali (IN).\nI love building apps and websites that can solve real-world problems, and add value to society.',
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
                              onPressed: () {},
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
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            maxCrossAxisExtent: 180),
                    children: [
                      for (int i = 0; i < skills.length; i++)
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 100,
                                height: 100,
                                child: SvgPicture.asset(
                                  skills[i].logoPath,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(skills[i].name)
                            ],
                          ),
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
                            childAspectRatio: 0.9,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            maxCrossAxisExtent: 350),
                    children: [
                      for (int i = 0; i < 6; i++)
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black26)),
                          child: InkWell(
                            onTap: () {},
                            onHover: (hover) {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.amber[50],
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  height: 200,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Title',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                          'Description of the project, fsgk sk k skgdfkgnsgksf ks ksk skgskgskgks  ksnnfgn s nlns'),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text('Tech Stack')
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                    ]),
              ],
            ),
          )

          /// Bottom bar
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.connect_without_contact_rounded),
        onPressed: () {},
      ),
    );
  }
}
