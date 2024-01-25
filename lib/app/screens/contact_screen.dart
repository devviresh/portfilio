import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/theme.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/nav/navbar.dart';
import '../widgets/textfield/custom_text_area.dart';
import '../widgets/textfield/custom_text_form_field.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Contact me',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),

            /// Form
            Container(
              color: AppColors.blueAccent,
              constraints: const BoxConstraints(maxWidth: 1150),
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Row(
                    children: [
                      CustomTextFormField(
                        hint: 'e.g. Viresh Dev',
                        label: 'Name',
                        icon: Icons.person,
                        isRequired: true,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      CustomTextFormField(
                        hint: 'e.g. xyz@gmail.com',
                        label: 'Email',
                        icon: Icons.email,
                        isRequired: true,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      CustomTextFormField(
                        hint: 'e.g. +91 xxx xxx xxxx',
                        label: 'Mobile',
                        icon: Icons.home,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      CustomTextFormField(
                        hint: 'e.g. New Delhi',
                        label: 'Place',
                        icon: Icons.home,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const CustomTextArea(
                        hint: 'Type here...',
                        label: 'Message',
                        isRequired: true,
                        icon: Icons.message,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Container(
                          height: 52.0,
                          padding: const EdgeInsets.only(bottom: 1),
                          child: FilledButton(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4))),
                            child: const Text(
                              'Send Message',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Field marked as '),
                      Text(
                        '*',
                        style: TextStyle(color: AppColors.red),
                      ),
                      Text(' are required!')
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            /// Bottom Bar
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}
