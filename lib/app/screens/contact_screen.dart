import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/app/constants/sizedbox.dart';
import 'package:my_portfolio/app/constants/theme.dart';
import 'package:my_portfolio/app/constants/validators.dart';
import 'package:my_portfolio/app/screens/home_screen.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/nav/navbar.dart';
import '../widgets/textfield/custom_text_area.dart';
import '../widgets/textfield/custom_text_form_field.dart';

class ContactScreen extends StatefulWidget {
  ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool formSubmitted = false;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final messageController = TextEditingController();

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
              child: formSubmitted
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Lottie.asset(
                              './assets/gif/success.json',
                              repeat: false,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              'Thankyou ${nameController.text.split(" ")[0]} for your message!',
                              style: const TextStyle(
                                  color: AppColors.primaryDark, fontSize: 20),
                            ),
                            const SBH50(),
                            FilledButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomeScreen()),
                                );
                              },
                              style: FilledButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4))),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
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
                    )
                  : Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomTextFormField(
                                  controller: nameController,
                                  hint: 'e.g. Viresh Dev',
                                  label: 'Name',
                                  icon: Icons.person,
                                  isRequired: true,
                                  validator: isValidName),
                              const SizedBox(
                                width: 30,
                              ),
                              CustomTextFormField(
                                  controller: emailController,
                                  hint: 'e.g. xyz@gmail.com',
                                  label: 'Email',
                                  icon: Icons.email,
                                  isRequired: true,
                                  validator: isValidEmail),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              CustomTextFormField(
                                controller: phoneController,
                                hint: 'e.g. +91 xxx xxx xxxx',
                                label: 'Mobile',
                                icon: Icons.home,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              CustomTextFormField(
                                controller: addressController,
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
                              CustomTextArea(
                                  controller: messageController,
                                  hint: 'Type here...',
                                  label: 'Message',
                                  isRequired: true,
                                  icon: Icons.message,
                                  validator: isValidText),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Container(
                                  height: 52.0,
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: FilledButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                        setState(() {
                                          formSubmitted = true;
                                        });
                                      }
                                    },
                                    style: FilledButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4))),
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
